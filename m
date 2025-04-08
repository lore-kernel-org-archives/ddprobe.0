Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5229E21CC47
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744151994; cv=none; b=D7o6Lv/EErZzEs7s/TXbwBusGc0rCoHT4JyM3bp8oj2IY4pxS0SmhrDUOoFVrfeoLKZfuEuXAN0vLko2lUpUhjeHO1Brjae2KmXrK453UEYmm1dgrsRWaTjtXlyOkttTp1vxgU3QzQVqiEsyOEV9lH7HkzM8qDSn73WhB6mvOU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744151994; c=relaxed/simple;
	bh=IuTGVYEC/t/1yTWo3UIz2g5TTn8uFMd5Nckdr8S3cBk=;
	h=To:Subject:From:Message-Id:Date; b=aSzMVwB1JpOh+nOK1eKbnOionG191SUkEz2JIUguelFlK4xtkSAqDHLmXC+1G/fyrBhmEYgG3ICqLZJRe5MkXSaAqZHPPIjKs4koouyp2vDz0kSAQZN1119fwyL3qUabg2gUX2pHI5u2uwe2y3CMxj+1j+vdS/96BMS/4At7et4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IWXQ9+hD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IWXQ9+hD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD875C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744151993;
	bh=IuTGVYEC/t/1yTWo3UIz2g5TTn8uFMd5Nckdr8S3cBk=;
	h=To:Subject:From:Date:From;
	b=IWXQ9+hD3rclcw7ajyBwQG3sw00NHPIaUErdYWQwifBJJ7vjEwoNrS0PHVV2Zy6b3
	 6QzjFy7YGnx9le6KVYHWzvTs03oAWYshT2bkIROw//QrQKkugzMpGFcY7Rv6SXYj4b
	 Q/4U6zXOuVIY5xDq2AoOXyGD4mlhTESH86fTKwggG8SPSrzJEmzByCRl/vPO3/kWOF
	 2JunYeIk2drc5reMOIpdJxsaotp2nGyAqhZGdoqW1uim9eD5YBRNGllLXYPjuNdF6p
	 6/s2xZzozHSbgMXu8FuKaJ4SCi4LG5VqSYQeCge/UMQQrWgcbTEYe3zTaeHqIpwZra
	 UTJ/znTTxPG2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E996C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415199361.13897.8975602421728907539.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86702813819423ccfb35eeee46727ad44edecc1d92682ca4b0c481928a39cfe
Date: Tue, 08 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744151993
