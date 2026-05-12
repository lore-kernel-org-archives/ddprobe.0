Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3848394EA2
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778592634; cv=none; b=pXBV3bQZhPC98ykqEjJ+85EGdDg118OpCqgsLUIXNQMgHhaPXX5hzhel5aF8HUyNghXYPK6bTHgTuZskrgyEA8vsiGsCU7X0OFGHwMG5W4bfOZRZzuasYQ3RhZgSooqMFapNQBioc3XwCv+vRIW+I7rWkuEoN3tstm0tDDxhHXo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778592634; c=relaxed/simple;
	bh=2I4x7RLfj62UYNy79wno6kSZWR0Ne8xKeWNcZKmEdrE=;
	h=To:Subject:From:Message-Id:Date; b=YfdTQy3fIZjdT5rqo5Mpsv4/KDJBOcUWQnCMIF1kFH5F2dKzF1hQNHTB2m3xaq04p5Ckk51l304D/StmHyr2bVojHVBiEldC1+SQBH8ce+bquGgDT1YzGIvqi3sfPZE1916FoW6euV8UwO/aPTU7lXbuFfGmLQbdV9C4O2QMD7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjcbX7Fs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjcbX7Fs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8DBBC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778592633;
	bh=2I4x7RLfj62UYNy79wno6kSZWR0Ne8xKeWNcZKmEdrE=;
	h=To:Subject:From:Date:From;
	b=cjcbX7FsVjohxqaL/46YD3ykA0adxWYxBHPe5U/SJjQy40B7K3qDKZtF6yv25PwFq
	 sxyOWYECa3qBqmxzXWNFAKjjK85WfCMdldDFrNOGK9f5kwPcZFaM9l858erGyzU7L4
	 zNjvj7G9G+jufZGmzf5EIphfYVoyyB5z3jP9p9by5REvklgB5iIieiXdYMlp9wLXtx
	 522JqRB2xj5s0WB2bDtVHp92ZIFwQCEBviywQ1dVXyTw2Gkcc7dneh+508sc/9ecW+
	 ysfPatQ3ONQwJS6VZRq9sVRfxiIbRrjr1g6A8pK6gjnb+BPp4LtIHZdEN/0aycW7BM
	 kuXzcV9X4RenA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB766CD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859263369.30251.12856410858162643214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae72d335c2d07b0ac0750e045323d856150e8b2a69c983a39366eace736aba98
Date: Tue, 12 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778592633
