Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC4C67B
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 710EFC433D7
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666588853;
	bh=Z9sgu0N08qqbJvD1ZXhyT5qdMtDZmi2pGUBDgLKdK9U=;
	h=To:Subject:From:Date:From;
	b=Pep/V7kkWaFMv5DkZEeR5QvITfFTdCDwu28dyeZnPiMruvWd5rTNG1r/Yt2Kzei6L
	 MzTeGqxfZQiBI/sjwkAKp5IRbFqIu3M5hxJfAoEogLWBkTaaLhS3q6H3hb6KRBoMvq
	 2lFsApcCj6MSbXyMLEAPIGoCTACPjZT9La9bA4wOo2Y2exd5QPShcwhSR8ZdhBK2Ik
	 DZv2jsN+VAOdE4/f3BlUFDp3oSAy/mpHGdIHLOt59cmUNxyBbjhNLxVO1RpNC97B7e
	 kdnr2f7/71p3i7f/rpIAO2KxBX7rk9J1jM4DwHDUMu1fcaCJRbgwRCcMVtk4n0HiSk
	 uWauPSJYYIYiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 550C1C3A59D
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 05:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166658885332.11363.10244814388679348752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28fe0bbe854ce76975c739d27ba4fb724b2c0378a36df256eaa5874c761d39a3
Date: Mon, 24 Oct 2022 05:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666588853
