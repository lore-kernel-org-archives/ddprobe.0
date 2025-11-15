Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27604199FBA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763192394; cv=none; b=Nw9HlQB8y4j3MvWZYOAqKanA+cbENNTwVaSZp54Z+176YOyqSX6dVAIVnGJ/GhxhvPzLdMZoXJ2S9LqyD/WWW9Ye1nb/GAgiXjoiuSuiXsg2yDzBzepydxp6a70tNx68jj/tHO7B6QfnirzHTANpGcXwBY4Tcv89EcagCKVqUYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763192394; c=relaxed/simple;
	bh=Y8xPLpBaVMbwL1kMgIdcZdsPEsjKFtCxIoq8RLwt6Zo=;
	h=To:Subject:From:Message-Id:Date; b=e+tyxETJkQSqjhKlEfXsr6YeNv4up/SuA5RQKj1yD/6tO+al3gpCEoqsnoO6o7rB+vIS8vLogW1wz8ZzHCF6s4VFLEMBaiYXDevf2SnXxFIPShbcbFkSqurkcJwnuSfz1idHZtCQ5ipzoCl1ixizY43jtk9DorLY/IYlZy8s4JU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mWEJQEFm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mWEJQEFm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43E1C4AF09
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763192393;
	bh=Y8xPLpBaVMbwL1kMgIdcZdsPEsjKFtCxIoq8RLwt6Zo=;
	h=To:Subject:From:Date:From;
	b=mWEJQEFmmu9hOm3XtkVPqdVpM0+81bJkOxBkexxGeruh3MuOYwwmLsAV9Z8NYM4bF
	 9vY1t1faL1w7PdkrtylDF+ZtsxlXj+CyNDd/gwzO3Mbb/aXidlIJ4nGRme/Uqg64xA
	 wu9R3jcce7ZOIXmq9lB9GjeWLZu2iJKC/y4ct1bDT+wica/dHoNUUsOQhZJ/Y5rmqL
	 CSRIi8iat28HJI7jmV9DKXxbLABhQecodQAXD4QdABqG73uikuEb7cGzFWsgcLCVZp
	 /OSkHVhzyldFelWudmUCTooKhD/1v6MQ7I2ydA1n6puYFlGFdOuK1lg6GekyGjmIyp
	 R3ReV2f3zwftQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A142ECEACFC
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176319239359.28595.10094106371264038449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e34b047c036261b4b4797805853e11b29df284145777269d07bc429b25354e0f
Date: Sat, 15 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763192393
