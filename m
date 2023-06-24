Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76F7D7FC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:13:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD37EC433C8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687583588;
	bh=5Gvq3BxE/PNlRvCDev45P9z4bYFwXy1N25QKD0rRXSE=;
	h=To:Subject:From:Date:From;
	b=H8yFm/vdCmM5isX1hkQ/z6PZFmjXZGC1dYzqsC5OP0qi2kIWF1cbhkUw45ioy7uA3
	 ZlxBtpzUUwTLK6WmYoUYdIFXs+G3LUfzYRxhjfYx1klTp38YEFruKTVVYQvx9/8WOT
	 5SPtcAoAwT7RQxlh2/AShC3N8a0kaxTZ0KsqEcZZ/MubHRyFghHyF+Uaomqpj868BC
	 ELPvzmhW89Fb86+ddGqR90ees8phvHPHR6/ar0rBvBgjFZBhlVbjSQwGyPozxTUgSF
	 3bC5met9Vr9ZQ6SevwkykYD/FxAKz9vLpGPY3tfgIE2yleVKIsbE7IPtdHGcJV4iwT
	 6X3LENoWt2yZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC596EB64DA
	for <ddprobe@lists.linux.dev>; Sat, 24 Jun 2023 05:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168758358866.25270.3872631273514995367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10ed29b845c76266afb50d3e32151e10951830699ecd42ee5addbd549b66e752
Date: Sat, 24 Jun 2023 05:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687583588
