Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F301FC5
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A16C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678630025;
	bh=hu7+WQUcDqypugY1QEkIHyTAs9sw52Y5/fM0ZPBANPI=;
	h=To:Subject:From:Date:From;
	b=YbTZ/N96L9SS1O52Sh+8KG5HCX+CHz4MIKdxyFayaWMVZp8G4ThoogRoVcb3bDjYy
	 NAKUiBD770S6xaT5otj3ziDtdBiK8EPaPnlAs7GJvr3q0EgJR5KDGMqarc8q0LkgxP
	 UpFksqxNzat3OqS+e/D53FcP/AUmSRX4zOffWRjazH0ZiBRtWAPSNe3+u8YwQCEFzJ
	 67J7sacXv/iGi56lZulqHVCJbucl7P/pOFDpwT4Xa/A8p5J6SPH2Ly8BbvaR/9Gm6G
	 EF5cSVbdmy3hcv9Mdy6KYSSA31rnx8Mr+s5U0MLwKakLM5npgpAjaMA3TnRCi9V8/P
	 i63RWJ/pSQslw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B824BC6FD19
	for <ddprobe@lists.linux.dev>; Sun, 12 Mar 2023 14:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167863002574.5832.3821106026669894372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a099a0ff80238e71a85b9c05361dda2dd5434732113144bb366157ccdabe3ad5
Date: Sun, 12 Mar 2023 14:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678630025
