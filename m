Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932262512FE
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 12:11:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739275915; cv=none; b=u2QghvTA72NsQDgfVFeuVDZ6LEctBmamJS8zghiIf84oaYUHqbjPqRKP2+dgwK8K+bnGXZIIoBcvZ2R5/tLAsCKKUz4kdNkfiwya6wu2+9+M4EGK20dbBIaJgu0ZPS2hZU0Ul62WHXz3ITfxrS2InjWMIiEOObVUgNL8uvpR8N4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739275915; c=relaxed/simple;
	bh=ffiPp8Fz4LhMgPcT6Z/VyXXw7zfZQ1H36x8/4uRqOkM=;
	h=To:Subject:From:Message-Id:Date; b=L/zx52ayBvY9waAGcK9aXhyNhQxRiqXOFzrF7w1xlq5EFMLCTXZzqsxb+Sqqu98ReXam9nZlhjsAD5R5wGER6vuMsAAPG3/06VjVT61plhdS5guQJVZ+a8t9O/wHZMAXUpOghxD7fjpsaIW0aVPEZpqIyxXpeLvLMt79HF880ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UjvbzMNY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UjvbzMNY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CA2FC4CEE6
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 12:11:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739275915;
	bh=ffiPp8Fz4LhMgPcT6Z/VyXXw7zfZQ1H36x8/4uRqOkM=;
	h=To:Subject:From:Date:From;
	b=UjvbzMNYwCMJRAkBt+SvY3HiId/RnWPYFsVLQEBnQZAStRy0g04MOyimVSApSJrcs
	 cHQgSh9zHEEVkPAIEZWYDOp6cHHz192jmW9sBDrn4CYaCr0qKJ28gTSjCxOnCb6Gx2
	 ijMprCsl3ioT1Sc0HZad1pM2oGrk3AF4GEuPfRy0v/TOMRZ8toRXSVcI1/49KMUGq+
	 ok/R73mP1WE+Y4NeWzPQ+TZcHxGHeRiEJVIcKlZnxADzElOAz/c57GwCte3P6c+jgY
	 DiZ3vY8i3fBZZ5Tn1KY75sJdzVTc1hGF5MguAr0+wiXFo/yue5IsXbMEQuPMQ2X/bq
	 3vIjXM6lJyTUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2B4C021A6
	for <ddprobe@lists.linux.dev>; Tue, 11 Feb 2025 12:11:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173927591429.30243.15717509165265729587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b041bcdef111bc3658dc52461934cb1ce0599c324c8f3b26c9c2c15062f1330
Date: Tue, 11 Feb 2025 12:11:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739275914
