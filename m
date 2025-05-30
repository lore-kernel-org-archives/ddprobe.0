Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C8CC230BE8
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748614794; cv=none; b=CdFu6UhL3bsVqNy6ucz94MHXNOZNQwR0JXstStb4D/OGBzDGP28SKQr/8sbCqe9SBEA0d0fa2d5lyHFqLhAShxMWtzzOonlMuN37rOOW8/JWead6Wj8YSBu+zpSfPSH2g2HLT8iCxIM1TZ0/DVr0lBF4iChe2wOAOymoHZ/wWkU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748614794; c=relaxed/simple;
	bh=uqJCy03NtQ1Qh2ZyuNBhTIQwi2LiPXXyivQUzk6MqxM=;
	h=To:Subject:From:Message-Id:Date; b=GN+hgWalfXx5xmY69pUWOF9hwQoUyyLV8N7vXHWaeZXvXrnnGAmOS78qlTBf89bMU8xhRsa9Q5gw1NM9McNEl1G13jmODkWOc+T3D9OrIiB2RSbxjDkOtrFTFN7jjKZd7Zx0KKgLK5M4z4fdyEZ1jUvJ1IdLFWdeYMrmYrf6mzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF6jj+di; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF6jj+di"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3FEEC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748614793;
	bh=uqJCy03NtQ1Qh2ZyuNBhTIQwi2LiPXXyivQUzk6MqxM=;
	h=To:Subject:From:Date:From;
	b=CF6jj+dih+0mBtyv5Yw9EPOs2y/EcYpeec9DHXOJItHbu/udQZF7GGrAnVcu1bRDv
	 q/LffNo2xkMQT0q3yZsUiuKoxacdAX3+orfjFDgZ/Y+uhsAhDsiABihqV94VQaLKlT
	 jABqQcNpAB957GItLV9mAS/phG8mnh7z0ANHNc7LgWAPmCifdlCnzo9zFaSPAHqrdz
	 /HVx1mtAdxuX8siPKSP8tD5KpaqfkYuRy+07gIdS3qqcXR1jGaZgLBIsdRjTVpS9bT
	 P2keooMQPjnzV+ehu2P5n+cg/WSXQo1ZBZvUugGXv980yVprn8IYxQI5L2x6OPMx9k
	 Q8/kE1cpb0Zgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CEEC5B543
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174861479358.26432.11052438828238616244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae1d2bc45afcc92f0b695043c5cc74128fed514bfa71cb880475a61f967891a3
Date: Fri, 30 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748614793
