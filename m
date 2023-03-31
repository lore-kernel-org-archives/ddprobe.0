Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433F18C1E
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 20:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA748C433D2
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 20:23:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680294185;
	bh=/qB5sPuJvSyT3krICggmBG9fXUFmJ/VnvMNCxZGqQxI=;
	h=To:Subject:From:Date:From;
	b=fxyKGd3MWt3TG/YtkFCBBUqi70rNv2cT1pSyEEcEsfR1fa+2+JGQCbr3SQf9gkvvz
	 Z/TVAyX56sC+EaLairnZAeihfyiYEkY/QOmdZhuo5RlxbHneayi0ybUlzPYRjuGdZo
	 u12cSh38teL5nq+pgWZOy7tdhS+4uHvOp8bs6YVLci0Mf1ow4i15f8OVbIEsY9Aus5
	 sbTbgtBvLy74urg2Nb5riTot0f/mSID9WmFRa83oF2+/3/auOYthlKQS+MzAjYHPT/
	 OGk2G4lY95ksC87/gZqZ5A0bST3nkfX4tZDPc3x+Bt0OalLopCDkSIw1KxJkzoXTps
	 UYSXOLNVt90IA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD0B7C76196
	for <ddprobe@lists.linux.dev>; Fri, 31 Mar 2023 20:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168029418576.17463.12839466119881710727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f9df7aa3b7c9002eedf0023a3342bc0778c0dde1a94130ee0d094e9cd3f82b
Date: Fri, 31 Mar 2023 20:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680294185
