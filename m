Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B606D7F6
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A379C433C1
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665055853;
	bh=N5cJgmZvvkkl3SuiYLA15RrKO3saoX2VbkwTnLYzbM4=;
	h=To:Subject:From:Date:From;
	b=RDf+JNrKNZDKoL21Azxds8Z6UmKFetxHSCES7+cHR5etJ11lUhRcI6Sk9aRnwbgSK
	 fciT0szGRFh4QqIdG505h3XzWQrtvhmyFxlNHSZgHtEWzSG9Yk7rbHzYFHRhAl0WvE
	 glPVpLNdoVgihvDlytu0bfwlNwenCmEXJroXORO/P/B7yjUuFZdq/mBgkT+hrHaqMY
	 yXZoX1tToUDx07KdJ4jwf/m9nzsZJygqVhi1etKMuyNRpJK05JNk8PUQ7PDuzQd0MR
	 HjVydP+BziB6EGCqbuwGu+FWoObHROiEeMkijOn1YCgtYF1m5o9k1TYUEiYu9mEkZV
	 03lcJTJZAKhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5237EC433FE
	for <ddprobe@lists.linux.dev>; Thu,  6 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166505585332.21817.3989592721671129353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73b00e762ba899b049992265426c7c1163597987748986dfb28e6f4eed386fdb
Date: Thu, 06 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665055853
