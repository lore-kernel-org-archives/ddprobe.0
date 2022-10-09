Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B71402F56
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D425C433C1
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665327053;
	bh=RRSUEo28/p2X3+cpymBWN/WwCVYUQnFk/lADMppLoQo=;
	h=To:Subject:From:Date:From;
	b=XD6YhrYMx0bmJ0aCWc3eOTTxYPwQSdC2XbRdNuXBycDjrwWdABMVBv6H0ImLYTigF
	 Sd/PaQjBbKOrEpSoPT1MaHi5VLV0fAv7lo3cPwfcOeQOFSLPt/lzWJDFh9ISJ15rHu
	 VgMlm+FcU46D28yPOj3swVius7J5bMaRYOTuZrf30viXy+Z4+p0Ubg8nSWr62I+AFe
	 G3Lj1FNfskPc7QCQ8yaqQpe1Olj4lBgRtBez1BYHyY0UGD0DrjywLpppM5pNfszdZW
	 GCn+PHNrGC9GfALusRWuuWdIL+IQk/XvUlEJUAhlFiIOl4fLmi5ocxWyVAX1RO3KIJ
	 03RTG0v4exVEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51B9EC433F5
	for <ddprobe@lists.linux.dev>; Sun,  9 Oct 2022 14:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166532705331.23891.4634762150188830478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cf89a8b1f3e407e57575978fb1e37bee6070ecd9681f5a8a53a2124c2a3c5c2
Date: Sun, 09 Oct 2022 14:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665327053
