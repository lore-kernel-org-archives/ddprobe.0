Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F5179CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747453794; cv=none; b=H8LZl/M/2s9hq7lEfBUbsczxMfZOQJ37yY8EHq69d+JoEiy5sM7HFULW0jssF9NBec/Ffywb9agsCPZMy8a6HitKbY2Jv8BWXS4ciVRGqQFZRD5Y0lU1yjlbsTYf1IqXh7VnHEjRvsQFbS/jNnF9iR9dxqTHkh5d0rnHhb+xzQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747453794; c=relaxed/simple;
	bh=cuFLgK1+CU7hBap/NQpPGEZoc1sGYTaiQv8ubvKltsk=;
	h=To:Subject:From:Message-Id:Date; b=ipcsy/YBFtaIy/KKrNLLPa9G3xcg57YVzP/k8kouf9QB8vqZoWlK1SVmLDLTeICodIoqQRzGGttzHDZDPGLbtsIdVIM08rIyyk7/OWLQzHuZ3Fr5oZvgXAybR2dzJBqzIr7GAQY+c+uwDmPeS/ZofZRYNybt9VMm1iD1gpmGAQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBJlpgRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBJlpgRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B46C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747453793;
	bh=cuFLgK1+CU7hBap/NQpPGEZoc1sGYTaiQv8ubvKltsk=;
	h=To:Subject:From:Date:From;
	b=XBJlpgRo/xBGxxsRz4Fwie8HISEr4PDYIsX0uejfpDKTiGUp+NWwFCv4H1IvDf0pO
	 4PaM6sMfQ8O80N/UycSRIc1fCE9nTyJ6PhZkXrZjNcqhHevugBBFN4C14QNkOw5whf
	 eKnQgF7yBYNV/F+M1cUn5pGqvEtfj1Tar8jRYMXraR2DiRLvGRW4ohb13qQQIfmnwO
	 1unkMZigYSEegLn46HAm/Cs/yxDzrZZZnbKJV7/TZgJq4cTD0ZwbhFlw3G9kYE7fbZ
	 rUqwIrRoNrWtJvzCd+zpDXt0KMU6L+jh5GzeTg3q4Y7hVz2lgZd9kzciOLxuvpR1nb
	 AMD3bSeAkhW4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9353AC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174745379358.26212.5465697759581862361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a55b45f26a2da0552a70567ae33d8edad4e597d7e55f50aa75e8fe247ed331ea
Date: Sat, 17 May 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747453793
