Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 062AD1898F7
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725906954; cv=none; b=XjKg3pgWcTuMWA/E8vJKKBXimyY0kxpNtznmP9IZW3NjBITg6ZIhuTDakwuYp9t7XbLcSC5bB4WnJr2KLCexNkKv8NGzRO0nod/YwZXDuDw/d7RPnKlylVp+dASt7eB/6wSQFztqABl90hZ1pqHD7o2oeinP1mYokypkXptVrqI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725906954; c=relaxed/simple;
	bh=LBVv/WLI1uBWNApV9c+o3xJO9aEeeTZ2hStHO6s4wmw=;
	h=To:Subject:From:Message-Id:Date; b=aKtp5Yzwiz67HKcDkNFsGXmSltNquHnjDTcTeNod41mdm8lvJjC/a5tFi4GqoS+7DdiJWjcC0Eg7grnl6eOHmExN2UpNtwbken9VR0BOneuJuSEEB/nMN2B2PQf+wvQ1zX2GqqLCWToYk0nIvH/V50WaixBV/2u+k4OfQUsdbgI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hCGxHiSy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hCGxHiSy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3658C4CECC
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725906953;
	bh=LBVv/WLI1uBWNApV9c+o3xJO9aEeeTZ2hStHO6s4wmw=;
	h=To:Subject:From:Date:From;
	b=hCGxHiSyY1arJ4+EYWqum/xNkncukZkISwBOVTDZfYlp/wEFZp/Q3vML0vTDLWwAi
	 CKb9ueFL9s1WIIi+WwLaSpZHOckVoM/SqUFQsNmTWdpmpd3H1FvcolY6TKe348i/RY
	 1qjlweyYn9MkxuN0He7BDtM+Xkn3Cfovu2lrgk+wjk8Az7yomdSqDjXKWXugB8wLN/
	 /LZG5prfhT9Wvr49pGSCAHeyPrvOaYSca9TqqOtq+0nkufQWlqtFDhRAXcB6pqzsbZ
	 EUniyG6CACfjfJS/Ln1zd+SNT1irqDB6OI6PIaJzIp6ZypZHnscoXdgHo4KhBvXsEO
	 Ffza7uQDgc+AQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9343DECE577
	for <ddprobe@lists.linux.dev>; Mon,  9 Sep 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172590695359.463.5149089658305164002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47318a76945a2a9eba60cf3eb7d156ad519c20674298d892f7fa33a681590540
Date: Mon, 09 Sep 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725906953
