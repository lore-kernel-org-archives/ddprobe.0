Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF001DEFD0
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742330394; cv=none; b=FUUCy9XFVEAYXQWqDL8dqWEKFDICTdKLt8vKZeu97zmVJAADbat/xWNxUCHIMyZvEBKfPvyXDAoogxrjyb9tjv6eJhpPzj1PWOmaLE/OgWNLzXLCGg+S42ujIC5i8mFJV+jKq49gOzrLR48z9f6UAfp+V+FOvEjrDvKWuM3KmWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742330394; c=relaxed/simple;
	bh=Jx4XS0B4o5Y5zRjxlr2rYlK7iocgQ6aeRD7fE4T2qBY=;
	h=To:Subject:From:Message-Id:Date; b=qc8dmam719JVNbkJAYZb5DoqCJqebyelqQPxrrtM3NQPj6n992aD8QltuGqooqT69axaClMOxpMZHuuJ51hLQZguzMVVt0q2z+nZX4H1JC+BAymoWw2QuxaodQ/w/a1scPy4AKGiww9UcsANfFIaRenN9MNDQ0+AYqJVBmdMM/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxDBaqOX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxDBaqOX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF943C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742330393;
	bh=Jx4XS0B4o5Y5zRjxlr2rYlK7iocgQ6aeRD7fE4T2qBY=;
	h=To:Subject:From:Date:From;
	b=jxDBaqOXEzo73nfWBw5X0qKzQ17KOU01Qkf+UGCG3Y+IBi4tJN3rZfO6xJuTHsyFP
	 JNrkmNodnwUUZog8UxtSwVk8tuUWuZ9ncBFMm32PQUhZE3F6Ottg1HkYVdOMZLdmfN
	 IouC1mcy0wfVlVsacTOFJ3+CqjaOv52YN5g2dNGTzmVeK+mHd/E8WrRISr6dCNbefz
	 Fm+XLs3X4Cd1lpujJLZlIhVQdUUy/slU9JZZmMlVGEVQNJqYk/L6/xNU1jtXsjpqoJ
	 /acXtQKO+bAvw76+ElMl8fU3F+hdJyBQjuiJLqLV46ccjfy7t2MJNrKuaKN5vMcKUJ
	 RW9PS71rfA5jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93497C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174233039359.6454.15358205528480680362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2340f1433dbe4ae1f7f1b299af789c20ced945f4f39fe09a1280705e894552
Date: Tue, 18 Mar 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742330393
