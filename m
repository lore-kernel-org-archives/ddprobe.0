Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21AA115E88
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729410354; cv=none; b=EdbWF5pYx/3lC4b+AS9miaxRfpl6Q8NWp5s6GhkYRaGJcOsfCsKM0A/pCXYEAc8PNXO4cxF/qarQZxo5ily2Q1Jcy9+MTQSuyOAgT20gt50oEB9Ldd5nTpfPYGmGxwJ2ThUht5f8NqA1F6Oi89It00GfeBSOlP4J6ywFEVmuRo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729410354; c=relaxed/simple;
	bh=DTDXvdqxDyYuE9S6cZ6G8Fv5NZN7ImbsecPXbSy6F5w=;
	h=To:Subject:From:Message-Id:Date; b=ZbQpriQOYyUJm+YX6lWanVLPAu0CW/vaKWrlc2nHBw0+GelLHdCX1BSARFdA2yu7ntvoXRaU4f9/aoTfGAYQKNvVgexgaVfje7DzmOxjtvkVh6rDM2mVeM1whoaX5bsCBIVeyjgw2Itj3krmjeS4F2YxtB/2Djlz3zk7g51a84c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIRw9aTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIRw9aTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFDC0C4CEE5
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729410353;
	bh=DTDXvdqxDyYuE9S6cZ6G8Fv5NZN7ImbsecPXbSy6F5w=;
	h=To:Subject:From:Date:From;
	b=eIRw9aTsIRQjduL4m5rEgSQe6W1yeNQ7/8vm2qJHQuon6HKWmxlrvjOfR7nCuMy6Q
	 Ta2tYP8uKC/EqRSpuX200xl+/xRFtob59TmebeN/WLNS/rqX7cFL7VSX7krVG4wPh8
	 j2XVfZQKgtvBp7ZkmKehN+OM1ZU8lJ6RkbwhNnQhwr8XbvQ103TtqPedgD/LRThTMT
	 a5lW/PclsjeCdPBjEN2OWVvX8RH7BYOwth1qGdEVACDUiI4japHI+5TP9mp4UQsPZ5
	 r9EpfL5fl3p9p4oLvDjaBFZy7kmX0tGeJKuqgUf5c3eImSM39l/jLjSLPRvEYXzbB+
	 2OfbBFGbk5VbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B22D3C92F
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172941035361.14206.7077437919157069551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc4f1befa684f472a560722fe22f2e28a86b361b641a19537d2cad871b408a94
Date: Sun, 20 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729410353
