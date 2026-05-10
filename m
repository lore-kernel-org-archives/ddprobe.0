Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22063EEA8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778426434; cv=none; b=h6Y9zEoKlRONf+XqOhHyly0dsbXw6S7oZRjOlnu+/A6PW7wb0JVkJoi6nM3RodF1xYiBzXMirwDLN3hNYbegG4tSjf4beGXILdYru2Kljj/C2SOHDdpA2xSGAtMNVT+x7gW3ACzCxoEAKvjVrRSPUQ/e/wreMRo3Lvexg9LZSDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778426434; c=relaxed/simple;
	bh=IBrQw/pK/m/nwFogXYP0zR0zFnlrFnC2kyAOP6Qjvmc=;
	h=To:Subject:From:Message-Id:Date; b=i2PxfmjVNNf8CB9rHceqoS2WuEDYAybfOtE42M9wOhQYZliJiG0LaUqcb/3uXZ4mYCX//9984+0A6tR+A1n35DAZtegFkYkbbgEvkbN6ZaUpum4t760od5Bkv9uGfHGkEDJfDjEe4fPD11lFbbmicl7y3kQIFWdWOQT9tSZt+/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWatCCNP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWatCCNP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE42DC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778426433;
	bh=IBrQw/pK/m/nwFogXYP0zR0zFnlrFnC2kyAOP6Qjvmc=;
	h=To:Subject:From:Date:From;
	b=SWatCCNPEpGpICK3lCoo+j+KPgB0IEnyeCSyjJ58h9EPFDYaA6F6XhBahCp2IJu3J
	 9n/Fyqm5IqqOdpo3EiF69tAG0Wolw/uwJ2wNMc9yEYZTaCLTG2JczUKkNxd/Y1S/nu
	 uuxwSt2M4cl0SH2evJWWPaGwILFlixn3IYHBBJoelQwbcODNWrnmpjPKot2rN0s5Ei
	 FLJz5ctQoY9hjE4wMEutBPJfgXHkqckimJ6ynjtGsAH0kdKoWO22B6Or9LyszVxaVI
	 hY7KgMn7CMRsbMXeL3NDraJ5Xd55BVxB0N9z0y6yFqfZ78V3NTXvOfUbOSuZxI/iiK
	 4ItzJJ4ouFUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFB28CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177842643368.4892.16258081756088988254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a8f162b7d44432841b1a4f3c1611f83c8c7ede4ca8f42d4b4fcb6be5f53d512
Date: Sun, 10 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778426433
