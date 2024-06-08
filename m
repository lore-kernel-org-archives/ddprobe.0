Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C0F57F
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717818443; cv=none; b=i0Y3PAFPV0CH6Pqsx7DZJn1Nl3y3GphCGtBBmBXbYYc9ZYnly0o4lW4yYdwlJPRHjtl3MpC8iumemxCAJxqmq5AF/gTTFYMM6BOX/Az8CupaiCyn65x+hxuWt9U+uyePg6HO0uDzrdJV1Vz4dK5IoejxpNRt2vbcFJ7J4BaQ+z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717818443; c=relaxed/simple;
	bh=1fKmp0a7L+LkdZK4a/+tuFmqcpfT8uTsvoRg4qHnaI8=;
	h=To:Subject:From:Message-Id:Date; b=NJ8E355UlM5czroOB8sxM2ZolqtWJNDgAfKGfNCA0/Q5QQkHn+0xi8N3ey4CU9mOnwVQO3Ae84AG4DxOI7ZSzpCkePWWNzuyzdNkwVndPjnlUlNozCl/bp3o+E9n0M7qolR7m4L3Jzk7KasH2vBHffJ6tFog5WVzdUoRTSSltRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7OkLubN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7OkLubN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6396C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717818442;
	bh=1fKmp0a7L+LkdZK4a/+tuFmqcpfT8uTsvoRg4qHnaI8=;
	h=To:Subject:From:Date:From;
	b=u7OkLubNii4tBjcfr9v6e3sO/K6Nc/faqYyP4puWsCI1C//fMkhzWztBkKn/TVPY6
	 DdXa+/ddQ4uES3CfHgKHtBT/x2Ap3LzOUU7lNbUsj7MdNNYdPykA4cTqpwV3pFDkOJ
	 Fx/L4tFY8gwpYVXzzKr9R7mAtTveWxtUS0LU/n+j7RO1oJ18rBtyG8tuERnJqPUBad
	 /9rDqDi2nJoeoiAwu46ZjLSWmF/GTmnVNShJAGgB2lJLPFfXVXnsPqwxoJROxvGcE7
	 0zmeKHNlhuxbcyz60CLQgPbidqxlgSnxhRQuLKZ72JejNWk4tEVqNdHkuQ97oo2zVP
	 8s9PtxjyGCEhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB942C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 03:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171781844279.22283.17993096703795748150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a913af95883d0580751e964992d03c01c4e668d92e505e8944f142e68fefc990
Date: Sat, 08 Jun 2024 03:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717818442
