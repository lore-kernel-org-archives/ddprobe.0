Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A46EDE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734796553; cv=none; b=eduGcn5ax7mJ7vCqH6+IrSYaAHcz0JbLyetCHawZx7Q8nacf2YQTZfWNVuz3mgSG9RleR1pSiSCEj0rTTIkI/eng+bqv8NXJJ3nmhlu39shl4qrUjItPmGWni6ta1zo/ZXzYiTC96930gJDKPR+fWU5CUjGDWnktiSJy6kh4Jxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734796553; c=relaxed/simple;
	bh=NxVFjLy0Gji8TARxB2oSjMGcCWa9euBdcvWO5oLZ3s4=;
	h=To:Subject:From:Message-Id:Date; b=DRof7aN0zzV+b9jHqtBtJHo/SvWf1IOWQZcbHogUQOhFdiq/6EB88q96a5CjX98XR3FK1hZ3w3KSVyFUMVdorCjsF8/1Y9ZfxFcOMtcHJ1uuSer4ksk5EzkZc3mgd/R2uUFk+Vq4bG1hLyswTdp8e/6htL16c9QbUHOFAd4zGOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dHxuVM1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dHxuVM1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF29CC4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734796553;
	bh=NxVFjLy0Gji8TARxB2oSjMGcCWa9euBdcvWO5oLZ3s4=;
	h=To:Subject:From:Date:From;
	b=dHxuVM1ORLQrQgSF72dFuuQY+5ZJzqHPgYNZVXhQODZmxyk3d8bM6cw+eToHVEAMm
	 7HqoVCkEmc/CnKXgS76zawV2eYUxC0iiOn6Z+bxMqdBuuEjbjDd2dgvIiYNprKpJiJ
	 qFqsKg4TX4P/dtXY5Pz9WhQAc1EBWjlbtEdGGjSRDyOXekujVEHQNkr9zacDDG0nvy
	 Rh230DiPGJ7ulT42lGLCwO6YHA6nzQUheBTyQcKsTJpWG+yeHEmfVN37ECQThwung1
	 xOm0gB6hlhLR6pDWnTHzxSuovuS9peyAObE/Dkl70rIqXHgOtXrfHxzRkI4H07O8Wp
	 wPacn8TvrLmBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C85BE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 15:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173479655360.23820.14634826324835824560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df27214ccf20261b4a8b4c0271f5daf514caab0b8c823266299a79f770c56955
Date: Sat, 21 Dec 2024 15:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734796553
