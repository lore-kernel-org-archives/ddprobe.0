Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD701AAC9
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VBNQ93NV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B167C433C7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705083496;
	bh=um1Jz7Fq9INg5pkHRhFythu6KQF/dJ9nXVNVmIhKmqk=;
	h=To:Subject:From:Date:From;
	b=VBNQ93NVoq1iAbvNc7EKvQRe8Z+0WElrXnS2yljwRiwbgShlI8dr4jY6UB0AYOoCK
	 u4TrVfrntrfxOOrPEVqmbpq39KNOz5Wtq3ifL5dKW/8Lqg/4BByohI+ICw4aWnK3gk
	 h4dzPfXotdAyXczXVdtEYkVwUG/H3XD5CgkSG3KrbGUM4IkEyaOqqW9qFc8oXZ3SSm
	 hgyk8czgCIlMjPZVFljnXSIf3wb4Tg2UsYdZBlVmHkTtFLDpzoTefWG7YABsCkpfZt
	 ZnuOzm0NSwX6Gcx+gIlDzYqKULQipuEKbbPHs12uj3PKxvXXluOPfAm8Zn6UAcQhWa
	 lidTH6lPEdWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7CBEEC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170508349647.32024.12178196657913157637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96190ddbde1fbca117c64d959f0f88e4e07aa265cc3d6e80191c3ee98ac6e88
Date: Fri, 12 Jan 2024 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705083496
