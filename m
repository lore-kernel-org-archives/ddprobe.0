Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7667C2FA49
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50ECC433C7
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689886328;
	bh=iuC1JQRvnTUIjEkRaqGFXOCZQKivUD1PaS9J6NHhZk8=;
	h=To:Subject:From:Date:From;
	b=brBpbBNHCi5qrxbj6sq1bFM2PbnvjyA4eJeHxOHPHTf8VOsn322b59ys5j/vVG7Jl
	 avUZ2MADXKmsX9ndXil+EQVUNTjhvdTXCYALwK0tZDGKlpAKSaI5d/xhtGVdhdNRtO
	 +0OURGnSQlJvICwK/wIARwaeaqmc+v+KT+7WDsDN97iZ2y+MTh33dksvWMRJs2xpEB
	 ttICHSVG0Bg/U1ZJZybnRkI8xHpihOcCORFpPofrFbYuwzRPHc4WTZcwsb1bZDzXA5
	 UibZtr4c996GKGMZy4OV/6Lqk8Uu6YdnCMr9sNwE9iO7xu7/ZioPAbbmstY1/2Qwyf
	 jnRXa6JoO1RAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5955EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 20 Jul 2023 20:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168988632869.304.11598138482225973567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6da9049ec77933fd12cadfc12c4d3437555ec2d01e6de28f4052238c0cf891f
Date: Thu, 20 Jul 2023 20:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689886328
