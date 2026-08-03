Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56EA042FCC9
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785781234; cv=none; b=gRqRkuyrGi+9HkJ75O56I//cEyal1VFL4YYOsRMWbrsFhg5gAUs6E2y61HRRFG9S3FTVPdMCqzUOAIrsr1SRpwdYVzjSEKwmmKiRsjXxcEk/AXfnfKM+o1vRoXAmDyuyolG6fzzdJNEaAw51TKyXO/RfmbnVIiA75MpzY8ATYFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785781234; c=relaxed/simple;
	bh=s45mjxbop2qHoAU5eoq0fnFFmMPyX/+aNmm7iHi7vfE=;
	h=To:Subject:From:Message-Id:Date; b=mSKtKVrWLrQny/Z4GYJqW61twmngROmRaB16sUsgrTboggjTUNQhUlNN/fBJIsbtRwCv4mTVyJgQRP7UrfDcNZIsCwJU8b0zbyzeJ3YIjlRm+z4YVNXBFJ9O2ojUY8ZGVaSRpZltJosTUtR8ORmw1IwYvx8xs822GqH4uECephY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aLSnq6Xj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aLSnq6Xj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D25B5C2BCF6
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785781233;
	bh=s45mjxbop2qHoAU5eoq0fnFFmMPyX/+aNmm7iHi7vfE=;
	h=To:Subject:From:Date:From;
	b=aLSnq6XjCCcusHjCs8t9KrXAzs8br3LqWmTJ+AvqVyjlAgHFJ5tGU7PAU0WOr+njF
	 jqHyWUREA4OxAVizHDRCxnhnmvEQu3s/wQFtjjaoUwzZEFIzBsy69RI9MXBVxC7c3e
	 FFfaqZ1ufX9tG/RGVbvwGogl3xImcf8xHtmLRObMra9SyXzvkpoqZLGY3kEPQqG7pn
	 MTeC4j5PMH8/rIa9PtsP8+9K8Z7KFVRr9Sagno8aVxQiQEu5fC+YpTTfN/Nfjk2qLk
	 RIkgWZ/6Okj9GYskgeT5SScABh7SiQCkDEgD7Fn8s1HmGFXQkBiYa27X6/SJN5ZtcE
	 jVKRrzgas7CvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0C01C55182
	for <ddprobe@lists.linux.dev>; Mon,  3 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178578123369.6519.739462976032832474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0bcf1da601562e8aee295c58e9c4119684c73f387995e49449a356330088ba7
Date: Mon, 03 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785781233
