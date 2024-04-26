Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E99813AD04
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714117943; cv=none; b=oi+d/TaC/+9Mb4I06Vn/sWHMeNQEYX9+YFYDIUDmQvV5FcJ9GyNTc0MQSq51VA5yYf5i1lPiWoo6WYdIyILpbQeqnBoINwwSaHdhBDOywjpJGSCyvIeVwAOVamgWH6T/jmfYBhWYigrASe6oKi6TYNRAwqnorHtuHDIlM7vTHfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714117943; c=relaxed/simple;
	bh=pIJXdKai7gOYwUf50LLClo2jwxuoCAK/ZTgMF9S8/oE=;
	h=To:Subject:From:Message-Id:Date; b=UscHkM/W9tLFcqIQLCM3TQKtJ/BK8zBNmrmxV0X61pB4q/NSShi7B78hK0Ay4jF2RiyXwiryDirarrZoobLLkaszHK50AId70VN+zq/eoWC7k8/3cWhyNtN6P5/Yd6ZupUgQDZs1uAs5b/r+aLWYi96Fc4blEGQbyZr2wqkF/fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=khqXpIV2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="khqXpIV2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E466EC113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714117942;
	bh=pIJXdKai7gOYwUf50LLClo2jwxuoCAK/ZTgMF9S8/oE=;
	h=To:Subject:From:Date:From;
	b=khqXpIV2HQxuBrPT+XVpJ0KTTGTr2N5EOW9aVvkhSbh5N3cQpAecu8VQlgAsScxC6
	 o/h+gHVxmJPWCf4RDKxWTbKijj677FRzQYmj2l08Nq5HGuUZ8NAdD55bnAnaRfI3S5
	 az5IPgfjzXVn5nU0wjUJq/8JRtexrABPUaNfRmO1ifyQ7Npv3XMVM0g3OwIcTXpHv+
	 j7MGhh3szIbC8KbnZt4iv3omnf0IrqQyK4ULMWwwDVWt/jDUIjNxjUki0hb5WfrNlR
	 OzvkoxE1HeCu3R3PMZK1qZ1qKk4sjBaQmxZbX0qzek7PFKkMptzolcMewz3XAZLCS9
	 m16kpgGPjp+mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C664BC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 07:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171411794280.3425.10111748925028231321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d736f7e6286d2edfc67567eaf56aa15e3d130add528868ddb2716d73a404d743
Date: Fri, 26 Apr 2024 07:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714117942
