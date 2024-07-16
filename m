Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247AA4C74
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721120723; cv=none; b=TjCgCUyZZv78Ke5MH2Gp1zwvZWBmEDQDVkwZtYL9CksYNqehvsGbswW5Ir+4PoDs5hmF4Ai4zWP2MOu7h3T/Rm9goVBvLcrg+IQEQyjwkPbaBAe2n8NEOBUBzyQaVF4wp/+xaxXr+sN+r3WLRkw3rM1ZXd3H6HH6rmCDJVlwKeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721120723; c=relaxed/simple;
	bh=+o7g10XqpIsC579BVxDFIfo9+Gdcokx+TG+RtV8VJW8=;
	h=To:Subject:From:Message-Id:Date; b=aHsfBhG5yz8mAYGt1VtmzJuLFcXLAzWcU6wO4/XMWeVwon9oRwEBAyfNMGzfGMwZgO6+i8Xw8IHX+1s8ZWJCeRPS/A/2/xWaSkALxdFZZC9OfUYI9Xmubp6P18RlsKY1GudkeysFX0HoHlzRkN+hDWAfBEezUJt/mP2BgjfLvrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JmgNJMmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JmgNJMmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBB45C4AF0C
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721120723;
	bh=+o7g10XqpIsC579BVxDFIfo9+Gdcokx+TG+RtV8VJW8=;
	h=To:Subject:From:Date:From;
	b=JmgNJMmx7yInpND6EHlRur6wGjPsXcISYgoLATsV2oeKGaALLbprvu39g0VgCEL3i
	 MUrg8vca4MKXMMsyvXQI+sdv1BgahUtKVTetHjROM0fT3wUcihTKaq88KfONiRutNB
	 CWhQUxCY7KQBQ0n39du/kGRBfhJNOWJ1zjvV9nlK0D4u8lCqgDEztt/oVGJl+AgY3j
	 myb3ZgGjpSBELy7nE9L+1HAKgNpOraTzv7aPXsPKusNvKi5cgv/sbbl5i+NB8HqWZd
	 7YY1wWAwqLyb9yS7DQH+s+sVX5pXLDmY/UPpBrIXmZyfZEtAE4f56FtC7LGAm8HOen
	 0T7yQDnqNXGdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D170DC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 16 Jul 2024 09:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172112072284.18065.9228933189797130164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 529b04512833fb19b796fed35bb54f170df64b4dedd1175f339303212739e20b
Date: Tue, 16 Jul 2024 09:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721120722
