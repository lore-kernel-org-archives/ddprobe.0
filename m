Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B9F5481B1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779712954; cv=none; b=Nen/prQ1/EdDwUSZpXRqOU5DkjQ+B205p/MCa4e38LQPuhfWWb2SppgJxJrC6ydAdO7pXv6YCPlSbUgV0kep5Wea3EoMfNqqhuLpFz2bA8FBI28X+uOlgsYNI7t4/K8IRBjV4PTcwAsmxoRPHxj46hPFuv9eKBJC5YfMwCEHrLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779712954; c=relaxed/simple;
	bh=URgdhJhVvf7qkesMKHRb6zZluhWMJIoCYwGzc7HtGEA=;
	h=To:Subject:From:Message-Id:Date; b=kPt0pMk290mpzxjn9DDWRWwdTJAOynLIKbgG2ntIAgGKOeISKt43U0x2LEYwfh3ZK05uhCGHtEUXr4WMCES8gVqYn5ObYXoateNhn6/c4bU2SYOurgUwLFxQUEEMF9uDDthU/NhSz87PfM63DOE4oz0CUNhgVFhlm65shXNoeuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZYsE7rG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZYsE7rG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8E45C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779712953;
	bh=URgdhJhVvf7qkesMKHRb6zZluhWMJIoCYwGzc7HtGEA=;
	h=To:Subject:From:Date:From;
	b=ZZYsE7rG6MzTLWNLS9bKUmjXj+253iNUqBNxTQKTmf5QETKHusnomAwA3A43etB7+
	 QLYenRX5FZZWcFPxQJFINwLKRnc5mV77RMke1p5VBMN1XJ+5mxIv3AGQkPyHkZ6EUK
	 mYa+Dn8rAM3fdqsm75U4MS1walD6+DgImzEP5DsIwRDed0kHXe/GF+SXrr42p9fUfV
	 1rGPX/8W8igxQUyMz3P0kklhnRTsUB5f5nEoA0RG6PVgEcb3QWgYrRqQUoniK3DCIt
	 Tgm/Xg7lUhkgNAPJPo9ZmYpA5J63vJkYYPgAFbzj3AZJNvZCuxABaiNq7AJj8vpBnK
	 BKbbZYw3U7Cgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE2DCD5BD0
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 12:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177971295370.20345.358194850662073409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca49003851a007d16d668eaea71c816b645762db5eb6444df3b0d3a30001d72c
Date: Mon, 25 May 2026 12:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779712953
