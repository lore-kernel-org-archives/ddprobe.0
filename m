Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09CBF19440
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oYxc0DN/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AD3AC433C8
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702701496;
	bh=NvoivK+FMPrOqEkNidHFARYkRaz3kM7/g5mn0v9eNeo=;
	h=To:Subject:From:Date:From;
	b=oYxc0DN/Ied8r0mprkMoUx7gqieLB2igq6ex2k4EKGWlVcPcPG7SHhjXPsRtpCWn0
	 LUQdKyMRHSl/4zsuEgT+BB4JLuTbmpVVpTT80/+yPkw5CAeREfSUgNk0QVJmUUTvxb
	 PAMuQIrHPOecl/VibGFQElOl74nRuf6hAE7meQPonNlg//YN2CcnokT5tUkyKabqhL
	 CQXbnKFigpMDuxRWpfeTpgOrot3QCUR4FYiYZWyKLrvUNxjSe+TGGscRsERVDMranJ
	 C0fiwnnBHI4RI0Jf4mved4LEa/loctXYVtDPofU19DjYTGD2XqDw4uYTFnsViaDtPZ
	 bHE3CXpHE9Sbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C338C4167B
	for <ddprobe@lists.linux.dev>; Sat, 16 Dec 2023 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170270149640.13407.16157263167543847676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b91650aa1091f8943380582f3a5d62cf5a91697b86290ed4061461e87281994
Date: Sat, 16 Dec 2023 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702701496
