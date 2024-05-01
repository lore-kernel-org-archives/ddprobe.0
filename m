Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B62165FAA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714601543; cv=none; b=oFWYfMAWp1rlF9g+VLJ4R09b6kBXhLcdO7qLfBa/kRp0ybx4HT/tc3nnVxhhFQb6+L7bG8H5mQQr6b7bn0L2Jbx88tNiQTXxIAMAZwIcoRnQETB6HfFCit0tFPLxfzhM7LoI3CWstTqctf4wXbJJT3/jFxrbe7JvqZ4ENnuoojE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714601543; c=relaxed/simple;
	bh=LuhhPKuLX1rHBZ2U5wzP91N9ToxDDah+aRkNLG/KXqU=;
	h=To:Subject:From:Message-Id:Date; b=sqxr/EXoUzMJ6iB0HjCJca53/smkgPHZhItASj/78BFk6qDUDQfHUbvfg/8lDmh1dCOAX6Vk+ZXs17xIADNa3+WTOYXPe+C0CXkJPKqpuzT09v/oYmEQZxzVQ3eaCUVUfANTKe66GSqtfwdDZf9MRSHHLEHTwLvG7g/BnWjSNaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhNG5EfV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhNG5EfV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCAA1C072AA
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714601542;
	bh=LuhhPKuLX1rHBZ2U5wzP91N9ToxDDah+aRkNLG/KXqU=;
	h=To:Subject:From:Date:From;
	b=qhNG5EfVcXkmzjb9PZgZUG1/Txia+3NK38uSSQLe9oi+k2Eytfp1n2G2IbImnK0zG
	 XJrHffHTdxEU3s/G/SCAJfQ17J5k+r1ny0V6767xynqo0Ozm4MlwgEvt/j/VzqlMX+
	 gVx3S5VER28hVGDs69pxF4R/5bgMmjbt2o35M5sixp03L615UdDInYMxl8gTbmbT0b
	 N5/zT639qN3hFpLdrwzrQ1Tyn4hEk7QeNwe23zXpAg7PIsywGc8MPswX5KKAa5qZcw
	 UJAToTTca0oSCv4tFX95VU/0eDtg2RU0GZPcP/NJ9CZcMEf9N+P7HJrezLg6LWueH0
	 qqZ6edE6ijYmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBDE9C4345F
	for <ddprobe@lists.linux.dev>; Wed,  1 May 2024 22:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171460154276.25662.12016790014255274598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64e91e5190e59914bcf826a21f547e996f679a399d7f15087ce6269996614378
Date: Wed, 01 May 2024 22:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714601542
