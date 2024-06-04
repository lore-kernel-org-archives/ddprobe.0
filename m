Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83B9014B07B
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717533383; cv=none; b=iH51Cr7M+kk6k++5OXBacgTSR+/5eYY/8yVvIkjaB330F7coCn5es2fY+XbRpC2c1HotirMYow8617TPgFCogZGwN4G02wUpf8f0yy2iqxryt+rFu/t1aSugj7PxAAu6rkj0Zv8MK6NcVKCQJbqh6vfu8MZjjJ0UrQysiiISEBs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717533383; c=relaxed/simple;
	bh=uHjJEGtf5zUz/j09v+UFS2fbkEni5Spxhp5D2nA0MtU=;
	h=To:Subject:From:Message-Id:Date; b=k8n8i9IfJssVE8mY4sPGPTLxVPSB85QgIPIRVEU7CojnVry3fCorM9uFyFf65JGHV0QTsuZZId55hTvki3BhfZ0Upa9WK04bvWP18Gd8po4C7S6j8rLeONU5QKsTS1z56eH7LYnWSGn9lt3G4wojicCDUAITB0JhGjVHRfXqeZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lqkwATbt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lqkwATbt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 18F70C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:36:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717533383;
	bh=uHjJEGtf5zUz/j09v+UFS2fbkEni5Spxhp5D2nA0MtU=;
	h=To:Subject:From:Date:From;
	b=lqkwATbteqth1jnfIC+q31wRKNY6oGygBHX5CQvIlpEznBdkXVHxxxD2NFZ61qdHb
	 6YAjHd+Rw9oMaJ1Gli8mDVhNMlWrqXQrD942zuxTnDsux6xEQyeIL/jije7O9KwVeG
	 4E38lQJoViGHDUleCni8GZ+XmnhON4DveylDpG5NsvQNolTe0BHXjtvW+rLh+/IRza
	 vwE08KewhlldR8DeE60nx+D6myF10+OJr39UsoVODOsrqoup0yDSYEs2tLXNhB09Rg
	 aOQZGxnKUVcoT2rvUup2zUtSLYN4/kpvaa1tSALxCvPZZpGDWgTSozmZAyxPHKhgkr
	 nfjB/ADCrVmWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EEFDEC25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 20:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171753338296.14887.3788360598943578560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5ce98fdde07a5a766d29032697e765e630e8c649c4c4ec35f42579b0b32fe8f
Date: Tue, 04 Jun 2024 20:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717533382
