Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 261B11DE2CF
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749924594; cv=none; b=GbKHkNRfaL2G3qG31kHN5mW1GRENfhaf9GvLfvXjjxLik5USwXa7/YcZUbOj8d+17ZQ2i2OdJOeEOrv2y0yywx6VZ+TvdjOlEtwOyEQWK3C+rNFnpeMJRKryZjHdxMAEQjVaXRm5R8ypoZdkOL+qChf4B7LVXbyX9DqYTL+GdBo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749924594; c=relaxed/simple;
	bh=WvjcKVzisQI+rY2K6AEU82Q3XN647ExY7uNvNeUk7jQ=;
	h=To:Subject:From:Message-Id:Date; b=f6hk1JJZLqGZ5mjKLGYA2wRqJEFXX7i2eQfPJx2jIdCzOjHWEQIgOBunle4xh8tBB3b4X1RA5BSGtovvHSb1KyKn/2iUJbdsYGEI8K/nCO2odS8hFavJL0Z47truxgONnOT3GSnSlniGtL7hbx38k/B8aZFoTXYKkT7Zlma1OFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kc6Y58a4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kc6Y58a4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A151CC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749924593;
	bh=WvjcKVzisQI+rY2K6AEU82Q3XN647ExY7uNvNeUk7jQ=;
	h=To:Subject:From:Date:From;
	b=Kc6Y58a4DAgjgaiA+jsAab14LNbEBFkNlCkuNiP7tfK2w3MqYw3sQZILDJqIojGbB
	 tbBUffeNPicS+wXcr2NAduXDiIEW5HnniDnpsB/2zXd6mj3t/D+siC/2d2oK7f71Wq
	 vct1pOp15sgR6sAEoc+TMSadv2lY89EqEy8rXqNEc5N5rndeVBRj/lpXuLoFAAETpM
	 Vm0i+CrYh8I1pa7th1rbKGTtjT8DExJWmsxZQKMRPRybf9oe8aWXYLfdlnau8oPZXm
	 fP4TWeJoCBALDHJLwbgZnoMqcWvP1zBUJX10rxe51C4vqvbVEzsDJSM/a/kCZo+PF9
	 J7HTd+Lyuwzng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E6CC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992459358.6808.13492625487503258406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acacc07bf24bb664381351c3800b41d97e8b3f2737591e9ed74c31d028d933fc
Date: Sat, 14 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749924593
