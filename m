Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC611CA6B7
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726428354; cv=none; b=dHTAMeukXQR/PcmVnf24aPe8E3T7zHkOFKvW8J05IDOXlRRseaWAqUZalm7l82oRRH4wYQtPrk9UH7EcqSnzBgcf/4zAjpi5xUm8qtKgoq66JGX4LU0Yd3A3K3WUkExW/KdE20xUG1fPmixBf0p9CmOI6zTdQ67ydkhFu/ZfVIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726428354; c=relaxed/simple;
	bh=61NhFYpSydbJRQGDYmpN4sHsX+hyCJdZerks0BxYZ6M=;
	h=To:Subject:From:Message-Id:Date; b=Ys5cDRwK0gyDvdon8lz65hWb/Vyw55Rmj8v0t33Kcw+Kq3rsO8y8Gc+4D758Fx2hpDpMWSw548RUF6XfUU9QEAnMS0DY4VlJX4KxU6iy4IvkyK2dbRvyXc4mfdbmFykdSOZFLJZNycTUkUv2njlJh0aBlTXo5s/ffoDp3pRwRNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJLbVILG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJLbVILG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6ABDC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726428353;
	bh=61NhFYpSydbJRQGDYmpN4sHsX+hyCJdZerks0BxYZ6M=;
	h=To:Subject:From:Date:From;
	b=jJLbVILGZW4yKe83hSoJ8CgbR0rNpUNGSyRYZT9A1GFyV5zG4ed33anYuCsWSWhMC
	 5seOyEZ4C/PMyCmBAzh4Tv8zvPTIW+Him2RHSf7sWOSEYCQ9slbhV+drkqJ4dFM+fy
	 LpNXAifRmSEQHVVIkjgJqnQb3TmjFMf3kiPP+8iE/cI+3VIpVT3jB0EC3Wwn4kSDU4
	 DFrWMIYDNHNo8R8m+JIfoHWZ6jCoI3jJXtBqyEpZ8TcY00ow3vBLmbG/SfGihxN3KE
	 ajA+Mg8Mzgautd5VyC77FoeLdMryCtFSqEVujdP4l151Dwt0/jIAKhad3/PNtumbGK
	 4j5MNo9Bp+5Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2EF5C3ABA0
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172642835363.4742.2315147269637937109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07ce059a488757975bd6816457eb4934c071f904ad3f510b001d8dfd460f9c98
Date: Sun, 15 Sep 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726428353
