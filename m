Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E947B
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91689C433D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671865887;
	bh=XfC3q2IoI8aRtbrQBAydoBvT9h9hVi7a6rpAZDTkjPk=;
	h=To:Subject:From:Date:From;
	b=bc+kP6YKA1JKs/OtBBdFzkRlVPI0WudWH+5FleyQJ4TnJggd7Ze4ADEhY/U8a/L8X
	 8HtbaOL+LaUOzqyEgSct1du3v/3NRr78Zp/mX3RV9evhCLiisGy16IdPKgZiHB/nDI
	 ZO5E53QqxMQYLY0LfD7maCNXdCas1phLudGrWNSFdz5uPA5VD1GAbBn9QFg6lZeY5d
	 vvtix/2yvzaPyOEYfyUQxW6lrGtGGrg5WaWY/gZMne2an+ISUe2IqU9r3iiggtz1Av
	 WYhX7X4JeTNEMJCh166FgzeOdTIYpfVIWITeD4H1QaqA82HNmaKp4zBPYongHY02Bp
	 HuCTi7dRqf38A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7725CC4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167186588745.13076.3226127058200376454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08b2aafb1c7bdc07cb58614093c0b4e0c0978f612a96c6d6c374fbdd0397a2cc
Date: Sat, 24 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671865887
