Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E072018E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 06:12:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1DAC433C7
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 06:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690611128;
	bh=Hy2An3sGiMG4UzV5GzPwJpLdnFPNhHz7JNt/Mhk/ExY=;
	h=To:Subject:From:Date:From;
	b=gORO/CDenGzrOcxtWizC/VMnQ2hkn44dzu+6hCc9kkRtLum+yXzPcDFplk7PqIrtj
	 NftXt57L3tLo3GrDfwg9zb1uHtuoaYvGmTGfe/XGlXVg94qk1gx0lcYmLw34txyHsn
	 yqUhi/betbv5bilJp9kecv14n0kwwm28qsa9CKnEcuyoseORXXsVcsbtYC0Luxw8I0
	 23CgM0P1ZcAm1R50TN08hptG/J1aAmNgFlDMmaRAwda1RV5CR2LpPvZP315Okwpqob
	 bSeel2mLixCX71UIGpIUbOOqtQiV/PDJMRRyhXAc80woy3nBQUF+Z5cEyCEK5Jgm6S
	 efK2IcAs5VMaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4CFBC0015E
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 06:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169061112870.28295.12771823470468832702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b92a2ff2bb6c3cc6c85543035f634affcffad025647c47878324b721384c705
Date: Sat, 29 Jul 2023 06:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690611128
