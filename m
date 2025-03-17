Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4137214900F
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742255994; cv=none; b=bqv6VYBogxSAKTqrACQdNPTPM/h78gyflsBc5X5nmZVQzukSP2Hz45TgYUR3vbznxUkpG4FMa7MRomecv5VBs7dm69MtWcdKLKOC9v1H7naYWt7/lgpqeoGsYjJ6RlkYHZ7ij0ZaYtvoYqAPpslgz2bM0axk424shmvxqGQPyfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742255994; c=relaxed/simple;
	bh=IAdsxDJ++ayghUoo4R1JqgJbZcDbOt2Ij3r+Vju+dKs=;
	h=To:Subject:From:Message-Id:Date; b=DOjw6Qb9FPOGrX4/yk77xR3Bw6Ikmw0ePeLtcvhEWdqLgWz4At6JlyS2u/1L1NHFzqmfAJYIVWpnoqb0biHu80ahw+ClYll3kSZLSqodmdSYUQH5dE97AZjFA3zQ3djxvPXEZqqAPWlR6QxX/P3o3Evjrl5fJeQlNk0/XLPy5og=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rW3qxXre; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rW3qxXre"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B27C2C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742255993;
	bh=IAdsxDJ++ayghUoo4R1JqgJbZcDbOt2Ij3r+Vju+dKs=;
	h=To:Subject:From:Date:From;
	b=rW3qxXreJFNUiThYy24vyn4Oy9wDQPXECF0d6h9m/XgiyFjbhE1aLspbqyJ7OcbWb
	 Nj1/NygmEc7mW7equDMcBFN5iOXXMRaU6JC5+1ZzfjHiRxex0I/ycCM0BE9nV7l0uu
	 aSAcOrFkpATS5mGobU2g9OMZfoLrp6d5Fd4shZvc+4Umh1YVxfaGdGqt4NbAwT7/56
	 8wkOLl3V9vqoPzHae4eWjwZXwcXg2uWXAKfHkC9txHRNjRDEQ5mA5PJjretSvvBFTI
	 G3B5DWcp5uLGlKFgU0clW5sYIimLonrQRcBPhXnOm8vlsbVKCvwwVBf0g0b8AwAyZi
	 ebNS668wil8lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B877C282EC
	for <ddprobe@lists.linux.dev>; Mon, 17 Mar 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174225599362.22506.10193489453465001468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7330c9c9ce299d99739432ff92547fd893f9a3c47e03ad1485408b343822c78
Date: Mon, 17 Mar 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742255993
