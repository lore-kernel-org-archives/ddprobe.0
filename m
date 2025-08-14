Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FAC12FB977
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755176394; cv=none; b=Kw9J8cVb2IvTvEhZVfF8KyFHqn4gK8CScz8ojMr+KL7d3S2kD4Y5KwLsqMv6MdN46w+yCq0g6RXTqx5M0JHcQBRvO7UnnIoG5vn9CRD/Ax3UDT8SIpWBviEtamFmsqyNX/bdcmoH1ysokEUtVE9vCalUcpK5Z0kIW9utNRpwhcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755176394; c=relaxed/simple;
	bh=3Eu1iMLIXTu8ak8lBvV+89eEHMoVXsytyQ/JWTZP4O0=;
	h=To:Subject:From:Message-Id:Date; b=A0O4pNyzoA/QcGnR3WS4Tg3y/bmV1YTbofi8EXHEGZpYKDxslyitj1nM8o9WEVZvhrIgM2XeOBnpm6XQkm/0lanPq4CE+bkIxQHcz94mctUDgKdCeWaEoN9r3VK59C6V0dKIQ9LUZhjpxT+k/fbUtfquOI5rOxa6CGlVTHrw7q8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NymiFSvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NymiFSvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEA4C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755176393;
	bh=3Eu1iMLIXTu8ak8lBvV+89eEHMoVXsytyQ/JWTZP4O0=;
	h=To:Subject:From:Date:From;
	b=NymiFSvWbYW3ICDtoWFH6DDJj41o/4ocFKHFXK3Fw8LhNpGRc5g3v5ziJhIwBIuhw
	 /nvywBq+WQgJKE07aIH80kq2RK651LdCNtsS3NOTumYyivJQhj14TfZKAsAByK5jE4
	 Afs4G5Qgb0gLMR1er+VYW4m2h1alvc8JDs2FzVnV147qlEewSGZwXLMNC5j4RpZIgf
	 zcPpqYq7B+Jro9Lp0l9wPtyo9ngzd9x/WWX+/0Wp6NPDLShhjYjh1aS/ilDReXyQGn
	 XtBgbp7NKynEZQHUGiLeCL/dRl3FvrlBFuKdVjyxNDkiGg7VzSHbj066soQiipagx+
	 zfOfEpgmiEGXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E55ECA0EE4
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175517639357.7510.8462052043211074507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 330a426b329680ba94352739478faee78d5d642e4168fdecb845fb9bf8acbd5e
Date: Thu, 14 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755176393
