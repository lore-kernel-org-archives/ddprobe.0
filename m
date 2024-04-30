Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D4A21A38F0
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714511543; cv=none; b=FjQVmmnwF0l3FX0WKjyvg+ikOltXjCMCEzXIv+VOFCVMNwTH5GiKw3DxD9wEWbOg7+o5hdjC3/EtFiLTUSiDZ0/eRmUoOHKtQM5MzueNRGSAWGBv1GIViDE+Dh6PrjIJlEfsiZzTGZs5vy/ALq9eCKQWTIo33D3ESyOWUMf5ip4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714511543; c=relaxed/simple;
	bh=BZm2MbLb0jQXeLr0h9/yqBG/RgiOcZYOy7QcRJt6jiA=;
	h=To:Subject:From:Message-Id:Date; b=Vs+0k4zOBFdOYhiBe9K9jHay8cwBuOEpixNtywKO/TCigT5S4CmxQHDlyHUakVW+c9taZLaYo2CHo/YkzmcH7agtf3w1oCA18e0i5mk6VfJ6nK1LPmbFfrKTczT8dp6Y3FnpgLw3E6bmVNFPso/6Sqy7goNJjRxuYXdQGqBmgZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=evu2r0YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="evu2r0YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8FF9C4AF14
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714511542;
	bh=BZm2MbLb0jQXeLr0h9/yqBG/RgiOcZYOy7QcRJt6jiA=;
	h=To:Subject:From:Date:From;
	b=evu2r0YF8ddtEjvcwEeiMCVacHl7L3D/Y6qs8DMNhqIpz4YBsvnPRyph003kNOLP+
	 wKdEvBOCiFtsUzwUHZRg3mbkqno7dsM6vuJQuDAIVzu0hqf8f1D4Q9GkdPbG44fCqw
	 RbaxymbicG24i4gxKQj4cLoEPnfpG1X2BETdKqvUqfxOBtGMnYIx9Dt6+yIkPMTFFa
	 JNXSJzlYP27OzeeG2JZGHhNIkANbzhlFWxz88pyioeFOws3/LE+GUnj/50Vx5Xau9s
	 9bar6CzrAfokRPiP15PgtnBYAt+0kuX8C4w2+L/GTVqzCjngR8h1IzL66sQPToUx3F
	 7vBrK+RQxG0LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3446C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171451154279.20024.13420500127787888990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 202e66f64672a346e1cab9bbacfda9493870b491974478ded69a8bb236fd0d81
Date: Tue, 30 Apr 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714511542
