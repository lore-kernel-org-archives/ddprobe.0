Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A64291474B8
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:58:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741467534; cv=none; b=fM7uUj3R9Lt6CfOF/bj8Y0rfM4ORXqlHEGVqUG4rA3TUBaLsfeCd1HGUPhWJGhq4r+g0H8ZWgWATVNH4v/PWu0rXza4l7h3b+gBCZ5gEpb3BpApsK5T37uYkOx6c826jKYbyPSzQ1PZ5RIswTVx7aGoGUgQzybnv9vaSV2rnqB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741467534; c=relaxed/simple;
	bh=UqPZOlKQS9VSM+EI/Wm/1PPLDkrmzb7xmGnPrUSiSdw=;
	h=To:Subject:From:Message-Id:Date; b=Sd2h1k9xZdNxiH2NnymiezVZxfJUtNPyzgrnKv36NgMEvvQM3R7kbbf/iP2lwKCTOimgYGEiSdfMwDBHQmJPTm8Rs8qAFw101tCI+nrHktPCIt5zWlTcCDsfpXqZfeeOLreI+wYWeNA8VwqF48aSH82UIBBPZ020cOVzkhQ41gQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hpsp2BpH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hpsp2BpH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D497CC4CEE8
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741467533;
	bh=UqPZOlKQS9VSM+EI/Wm/1PPLDkrmzb7xmGnPrUSiSdw=;
	h=To:Subject:From:Date:From;
	b=Hpsp2BpHgXWnc9krdMSiHCHr0vvLkhzhR1EFiVhjbxAyhe035tOoU09lzWe+aOe0g
	 0CM98iciu5T43r/coxaZSQrpY7j9pN7HTvPZq9QTf9hA+hWzoBU+dD/rM8T5lzJris
	 MIk9Zj/rVKg/SrSBm77MvWoG0WR1rJLY21LPT3L4CY6x6+AXhHovjjGZ3DdszUmb1N
	 EJrHple/2GGOkN/qGdb/1UldiTY0+GELVzhTFzpFXpcpS/XWDQEox2nqbc+RCCYsGh
	 tMmainQFaQfu1vqJagzLU58OHIyeOdTRxewzwkbqMecBoqK0DQZoKvP0auCk1tKdqF
	 TOyzZIqIpYpRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A34CC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 20:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174146753362.29760.15212711452719957171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3fe13419dae20a73e36d83c503d1af3de79a5246db86b23e33d758e515acee2
Date: Sat, 08 Mar 2025 20:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741467533
