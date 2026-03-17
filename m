Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3353264FA
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773727494; cv=none; b=ZXM2mC+9QOh8P78LBDZTniCmh0C4GxMqJ+GNDfp9IUDb6dZ8DcnQJB34l0HzXJUZZTRUtAnyYPbYMXqd2gZUA3hM1+VHDa3mjPd6w+HPXRDBAJtQw8QgFN7tVd1bjbqs2Bdrmepd1OY1oy3cXoX7GIBiVqPOHYSoAM9Qu0/eWPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773727494; c=relaxed/simple;
	bh=f+sUEQhpNGp1jUSUPvYVhHYtnpEBhFr/DD1IiQD2mh4=;
	h=To:Subject:From:Message-Id:Date; b=irtJgTp6osb02Th1UYppMU8uNT5QXo3oF7b2PPpb+RT8ctkIVzpfzgch/pR9akr2Rd6O2p1w4p3yI/00EIoSa+muGp3JEoYvQh1HFIavB1IdoE4RJP9NZF2nbq69a+ms8HDuioDlCN1VlK2K7fRa13ac3SwC7zXBx9TZ8kAW02M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWBZYyPO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWBZYyPO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A708AC19424
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773727493;
	bh=f+sUEQhpNGp1jUSUPvYVhHYtnpEBhFr/DD1IiQD2mh4=;
	h=To:Subject:From:Date:From;
	b=qWBZYyPO9/OKj3/dsL90YwLmJLFuIVYGYjH8FGktd+yhiCf9f3N3aklm/2mmexOz+
	 765SnP1gC5nYY8E4uwr2JJ/5IZPLGeie6sGhoFLu0EZSzcVOQJePI1LtIcFrnayiln
	 EXPaP7/5Gtziy50WiFU4NCCY599D5MiZKbTeJ+YeVHTnSYBUaRIxi0TByP5FKfZom5
	 pKl5vm0cr2FkN94GKwkWqTt0njEMjRxNfCA4YwzKjLV5jUsEkotUMHgXZBu8Z1aiaC
	 5QErPjwIqIZJG0SG+lwPuEQhHE9mjCN63gGa7ITdg5SzuYK3yzPCuW9w/GhYQClQ0D
	 lmK5Il7jysjNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92500F506CF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177372749357.10896.2297889990333475278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a94e3c7d4159da4ffa2d78c5c72f273ae624648901f624edb5d1db6f7591412
Date: Tue, 17 Mar 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773727493
