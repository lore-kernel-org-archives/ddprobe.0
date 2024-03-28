Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0840E53368
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711646897; cv=none; b=dcB27mysTs77XT1eoBknQyMaIr75V+Nn6OC80BDT2ZuMwAL+YRuJ/hhOzn/DzxZUVRps6YY2JKvqrpC5hKBq08dXEu034J2zzHltEu2SA7qHcUYVpcBRh8PSqaNgpuqr59oTBhOchSVYzCFVhmgGu+dB2MaMDNgY++Faxtv15BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711646897; c=relaxed/simple;
	bh=qG+U6uCdN/6aXMXhvDP8hHNGGE3aZ4ftuSfuGp7DX5U=;
	h=To:Subject:From:Message-Id:Date; b=G7GRhAksPcKyZT7o8rJGO0Mcp0BNvVg+fsHU+gKTbOVoz9VGE5IbSkw7s0YJgiFguCb5ifPnXa5NxKBrTjweWa00VA/liw9FodGGXrtlHhSZM1vRLpjQksV8JTZagWT1q01p6Bx7bqjZo52pLU9bVPE2D/BvqvILuIKFaaLiu0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qFKZ2myz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qFKZ2myz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C957C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711646896;
	bh=qG+U6uCdN/6aXMXhvDP8hHNGGE3aZ4ftuSfuGp7DX5U=;
	h=To:Subject:From:Date:From;
	b=qFKZ2myz7GBK8yxEou62KnddEIdPV7TztOfSI7OADedM0fSRV+KBrwwq9y/IdnZe+
	 hxEyNt+jFuLaW2vYOV2LH4AWwnV8X0RU000U3kXOfESQFhXzZP+OM6f436EHWsGTyz
	 wO8kHlfvGCH770g8ybGtXTayxnEFWbe/5CzCsXXRrTuKSLwrd/Yd8VwhBRdP4jhaea
	 /SIxHShvqZtzlQ1VtLCSUwEjq6jbormoASBnVqfjDyzuEcCvu9efADILKFTwaU2Ifu
	 hu3MqyA+gYxa4xFM1Jr0DbF2v0D4woEWG5lJO3Tv2wUh519K9SYT2eg8Z9f6XbLv3h
	 nZzMl6uo7zhaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7B8BECD1283
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 17:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171164689645.17674.16648555942603010070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56aa06e82448944a2ed033721fd3a36480a0610d606d51253cda1a4b95357fd
Date: Thu, 28 Mar 2024 17:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711646896
