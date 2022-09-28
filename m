Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAEDA31
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 05:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73215C433C1
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 05:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664343053;
	bh=139QyjSrZpjusWj3WhmTALso71hSt/SA/TgaO0gF6Co=;
	h=To:Subject:From:Date:From;
	b=eOXGcjk8RsB0cT5gbAHpN5YjEKX2nWVFC3YEP+2SAvIXnmc0tZcVlJ0yQr5mew7T7
	 qo6JWun7MaT0Ix2Fr1tAOMCynuWau49HcO9bA4bglTsIGc9yjJUfG8fNS9Oe+cIEvC
	 bE/Q+Uw9E8I1d89Du5F3GgyAx9y7DNa+aftRvUOj8FX4nM77xUjKb4TR/RghoBxkT1
	 Fgs7AATsp7FOqwSBVayp/77zov3X/+gqoMq2GQBhnWU+w/kksSWaY7hoG/qjX3gh07
	 wHgUF9cKf73M+VQltsPq564qgbuKsrsIll4yoNE7vK14s2kf8OeM2GcRtKtURkbPhi
	 077elIhkCrP6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58F55C04A95
	for <ddprobe@lists.linux.dev>; Wed, 28 Sep 2022 05:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166434305335.21526.9432064898802195645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4092c31f5244db33cfec9bf6aa6212048cd98af0854a2b3cc734b882c597fbd9
Date: Wed, 28 Sep 2022 05:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664343053
