Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC0401D9A54
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765912433; cv=none; b=l3i1wABXYjR9SBW5Ridh7pfQ3ib5LDdN0E8A2iFs9pJPp7rG5R5HNJh2/ZlnSotQuVIlS+OCP6VhJ5oTEeGiu9Oa9VPjlp9SgGs1WW8cVDF6gP9d43JQ4KXAjALTCn7SoSPI4XUp8ekTpXyE3pWHSodps53ktCQ6XGZFrzU6hoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765912433; c=relaxed/simple;
	bh=N8FQi2NCg/wXs9C6k8N0X3tWQcFDBUZS6FuBx240oRM=;
	h=To:Subject:From:Message-Id:Date; b=HSuIjORpiWXffF9GYjuf+39Pxr3zmY28WM/cbx9wGGPXuWrexN5PurRo4alaefWRpG0R/Y3RmcDPJUlNdg4TSeporEXi0ajxyG5ScEQXTmD4N0ZDmNKLBE80jF9I4iiWU/UoSSJREq7JZnBARd9wGKNRxhZAWsXps1rG6mDGnR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hg1HSKVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hg1HSKVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A12E5C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765912433;
	bh=N8FQi2NCg/wXs9C6k8N0X3tWQcFDBUZS6FuBx240oRM=;
	h=To:Subject:From:Date:From;
	b=Hg1HSKVdtNgAcNzRDAlP0PjfFHB/qaaWFrQ8V5kQBCCA/z2ad/SnozX1meAmjT65y
	 zO8vzpqn3QE1LNtVc4wnYqK9zPUqYiKyNQqE1yzzHYivwTZpX1kpt335kVe7IRn1Rf
	 YqeO2a89sp7LaJZtM6ziyfhpvplhkey+GLXTyoWs1bZ22SBJMUi7Vx/SyS7cIHCnhV
	 rJ0M6gidKxWWQG/pg/vUuyeAv1Crs05ds4bHXcZLMp7ipmMLJqyaPV233t0ZKOfYgk
	 nGeENVvTkNMXn10jnV0wZe7yxjHICxR6g4B6tVimm0YKBqpr0HVc9sCXZtsfJyaCMV
	 cRj/7451SkC7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91385D609DB
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176591243358.1797.6900918640817815734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9a0f902886442381ebc03403d01c9c464ea11394396fabc4f4023a1c51e33de
Date: Tue, 16 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765912433
