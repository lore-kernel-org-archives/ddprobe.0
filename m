Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40E3C1B86EC
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721421954; cv=none; b=UnB55CVjBDPcLSDc2FT7OvAHAIkZ6cdllhl1aIBoEeujCvar0qiwrGRWWGJBxUrwKu8R2qibm+rhfuPcExVBfzWm7lIaNnaKHq4atqXxuDyI95JNINkaPlSu4HQZqiilwNAiqMGWvEIZtUSrFoAtS/L5zEYImNF4Z18PnjBQi+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721421954; c=relaxed/simple;
	bh=/SnF6dJz1vylJw4dUP9bThk3kuEz2fQpGaUbp2nXfK4=;
	h=To:Subject:From:Message-Id:Date; b=uDZpVxWpDctxHExIDf8N64+Y6gLfQFQYaFr5DwpE9tJV73vR0Tz0dHpf7nVVZ6b6BC3nDTB+BUH8h593aEjKJB3H97loeFUEhdUhXgZMkffZUw1cuLu+uxIjC142iG8B+tefe3EPa29C+WUXAYLgdCqWKszox3Ik32DBXZYbX4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvAtbkeF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvAtbkeF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C31B3C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721421953;
	bh=/SnF6dJz1vylJw4dUP9bThk3kuEz2fQpGaUbp2nXfK4=;
	h=To:Subject:From:Date:From;
	b=CvAtbkeFT1wKKES2EhP0y7UBEiyzaouBMRIg0YfXdTYNy/+pv+a5TzPn2Dw38pkcG
	 sKW4zCn/lxJ529tSmLtEevHcSXXRoEtzy2btMExSoVQ884Z/OmMuwp3HSx8x/ZfBxe
	 vefd7R8q+3ZPIl2KXOOqrSJx/DnB2qDTjbuBHedDLKxZH3Jrf926x0iauaK6VSpPNv
	 X5m6cFMcKkeCcAwtCQipiThSrbxw+0rqpR4E7hWmGEoQlDZ7e4ujZgJP0x8fesaTUP
	 uBMeWg8aUxKhWNO86pJk2SzDo8PJWcMaazTQtiKHSE8odNFe9nFVXnGSgsa/odUZGR
	 i4b6Q/6aIiN5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2794C3DA5D
	for <ddprobe@lists.linux.dev>; Fri, 19 Jul 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172142195361.25124.13827911429273527972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37ce7eb9202e3a175065fc501935e1ad58a464253214b313d2d76289112fefb9
Date: Fri, 19 Jul 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721421953
