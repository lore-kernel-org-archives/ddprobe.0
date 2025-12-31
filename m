Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CE2280CF6
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767219234; cv=none; b=ahSoJWLD0iz20rKJTzUFvGTnIc134MRzeQEn4bWLzimLLJI9xa7JBGYtkJNfHurxrEIMcPVHybfYrHvONW2Y9YMbKg3AqiZWDQa8FcmABMFgmPSKwzU7M8GF0csedEI6gfEV4+iqrzkwPyNkdzpKqQNruxfgqXOdpDbiKfZY8XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767219234; c=relaxed/simple;
	bh=+J/Lm0i+gcf3ZAW8nr2RZvrr0Xyotgea/GYJPe+MKhY=;
	h=To:Subject:From:Message-Id:Date; b=j3fYTqFNpBqAM3oIkl/yQG6+l6K6Peuqakx7y72z+KuZVMAG5jp4f57gM12JuFf5t89kEK0Pn64zRstLIfvkO61RgniGrFIRx/hHtyhKpJ+50hX4p6d/nftN45vmy2mNoHWE3k8u9J9CAwMFRpDiJP0yWJCm3tadGpQVNHyQI4I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eP9c7vWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eP9c7vWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A967DC113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767219233;
	bh=+J/Lm0i+gcf3ZAW8nr2RZvrr0Xyotgea/GYJPe+MKhY=;
	h=To:Subject:From:Date:From;
	b=eP9c7vWfKPxS77sZajUI0mEmjNvD9dURhb/wwXU/Qg5nPqDW5P+Xjkb2HSKI51M5F
	 0bsPV3gAtpTB76MT000Cx09PplXOyw4I3UBNKk1YrSZEroniLfbE2IQxnH3R2u5cyr
	 +kyQg/aw315o8Z7iZVf3Oha9s8ulm/Kh1qI3QH3bRT3t9UwLKEJAJbwfyTO8OQos02
	 mkBWnjdziCs1ATK2ux8pjuYQf2ry2a62Wu//ldtZE7Gp0+iabKCUmC9/64vfVjHKle
	 o3Z0QeacIQDAJDSrrbVq0zZQ1Uky6A9WGhLFkUbSsX92F/6Z5eiqhqre7HwRJ0aCIX
	 /7Npwch8zXerA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9436CEE644A
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176721923358.10029.5341766386993033938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f5d3b320e782b00bea9919e78b22d8241a6d1d3ff04ec60664ba39ce057759
Date: Wed, 31 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767219233
