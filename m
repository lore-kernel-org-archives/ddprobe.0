Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E3C199931
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760410794; cv=none; b=Rreu8uOGhqj0JgELPsJHN9OK3yMdYFbRVUB3bAcO6DOae82S19ycYWqpT5lH321pMYinuWv/k8ngw3IhxKWSXAJHV+JhlS6N3AmNzwdClB3+NX4vDlMA2AGqU4WEFjtxsCz9aWFj2rMv9KWvDJ7wCjdsPy+VwUoncrHQ0L+vjUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760410794; c=relaxed/simple;
	bh=j/DBrXZtGnmwUWvBI3QOxN7Ox5aY3xISi6MR9QZvSUU=;
	h=To:Subject:From:Message-Id:Date; b=c/Xd2lqRJq0tjiPuaW3Y0sFns6PG/t8k1HjLn6t3rPRSd3dZvw4u97IkA7ikuouBgvrd8cxcFKLPoDfSlHZdIgmiJljCt3DbrgfcjBgURMx7yiJMWthGPd0FmL4b7zgCbIAzQFD6DyNZOW1+lDN4Yu5S0IRDk6kZaSK58ac7a6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jZc+/Z3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jZc+/Z3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B6AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760410793;
	bh=j/DBrXZtGnmwUWvBI3QOxN7Ox5aY3xISi6MR9QZvSUU=;
	h=To:Subject:From:Date:From;
	b=jZc+/Z3Pu3iHPy7dT8fYe5qBVLqlHBEkof6PwZgEzIm9eluL6fiqRk73PkVWQ1TUq
	 2of8VIelwk4YpWRZejzuh3uI8rc03AwOsNvBm8B6r8oNfzWY7JVO8p/FjI2RqNayk6
	 +9LWjEYMUMkNHMwNatlDDumU1DdQ3z3kqh4kH+awzxxkIqXhhxcXRB+BgMPhZ84G1h
	 ean3pGcqXKt5EibRkUNEchFjvzdmq4uhSgIfUuksn7EaAUbexLuRgufWz0VC/BhiEv
	 4A6HfSr4ruES/f2C6g/76rb5L5SFoz9wPvZyvTKQ/fRpmJndkJ2AavZptKbc7DabsS
	 zNb5DY7iAde+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9386FCCD183
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176041079357.4394.3965314506978049179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 367b7c380995ded9019e2ae0b93305f43e0fbe9364bab183db7dd96ae00e58db
Date: Tue, 14 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760410793
