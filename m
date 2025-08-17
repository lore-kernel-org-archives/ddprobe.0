Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46B9F10A1E
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755404394; cv=none; b=dF30u990tpgYxlnqUjjCtd27hAnqzouDxVG40mBOdZ9ufXNwQLxTc+KmIcChUspzDtBnIyjpZJqXlH9Cc+Do2HSG+U4+Xm8rN5OU28BzdIbRDrDqL/eNKdLPHaAZVMxBjBlwClKfj4nLggG3daj6nrhNXKxMkoqbbzFatKY8Gn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755404394; c=relaxed/simple;
	bh=GXo7lTyd8DwnMUgZSnjOu2cvbH/GysIb0Of5bPXt/PE=;
	h=To:Subject:From:Message-Id:Date; b=ZUDqoOQpKwoajoMb8DG0JozXmjt+Xp2/gyNX5J8zA7xUlu1Rk3+QcBuoOxVHYYgQcjwIgfLKbMNFNwC3XVtWhYpSODtyIj/gpm1QZEiwv0pZ2NG3ncuDauA5yA1aBI9zPBCZpMjx5Q1bZS6U9IuXTOVSKgwh1wWP7xQElWIbLd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2IlkFGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2IlkFGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB1EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755404393;
	bh=GXo7lTyd8DwnMUgZSnjOu2cvbH/GysIb0Of5bPXt/PE=;
	h=To:Subject:From:Date:From;
	b=I2IlkFGZwwq/3Ewt1hHFARoXZN8UgZ7eTy7mERJjk13GL9aCnKHZD348v28S4v7k4
	 ZzzDLoucBFaVNdZNpJOd/AwXnZ4tn1XxDdEzU8gWTml93ZFGtqwBKrR95hYvq0mQBJ
	 7DnXwMI3fskFmxQgeLFQax716EuArN19JcXAJ+J0luDfOoEmt4BBIjMz0D0G/FZ8NL
	 4cyNu2ExI4k2XMPcvRYhwZuhc19H/97PLPW7HppffKg8KiiPcQN2ZYIAbsUNoiphpX
	 F9yoEE+RyGoxIAZ2ajs4gGHLmO6GGOs3bvAS1z2KYgnvYqN9QEbhpBpR57sIWlwgnm
	 SH+T6jfnc6EkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99716CA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175540439359.28922.4242213268102559845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 217edec692e49e60b1770321bf60b8f494cac4144c28a1eb170ddd813ba455fb
Date: Sun, 17 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755404393
