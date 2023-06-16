Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EC171ACDB
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E09E9C433C8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:09:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686946148;
	bh=RRqSKzEnIvwO1Kvtn5r6L95WXlGXqi0kPfoQieqePFk=;
	h=To:Subject:From:Date:From;
	b=Vb1bXBDEyEn85nqIj4m4qxMNU9uZjud3Pwdwl9FaiF8WNNSC6RL25PsK8+Xahwl3i
	 AQrM+yxassDteWc1H4I6Eg6q/3lYV6hJx7XDsvsT6v9mZ6rSygblm2eJSTny9YUhx5
	 K1/fXazal7VJho5pCld5dPv6WP4LSI9fWsa7qtdJOhqOnVPO/XuvP9UK4XhN799oS6
	 6mVr4Uck4sr89OrCj5BmRt+8Y5bKl6D9z06v/99/eagWmBqemd1RV6s5SSQR01lKGC
	 uOhW6eLmQiT5ZBLu99p4HJU/28C9R4NY9/Ie60fb5A0aodSdY321HtuHg7Wy/Ienhx
	 dIydBptatJ/hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5310EB64D8
	for <ddprobe@lists.linux.dev>; Fri, 16 Jun 2023 20:09:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168694614872.12395.16295028368811814749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ded660a4dd97b4793c4f4cb5ed440f476f32c6210f4898a6c9327ec0f6b52be
Date: Fri, 16 Jun 2023 20:09:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686946148
