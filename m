Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494F441C71
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743968994; cv=none; b=G51ODc1iZ9Wgyl/oSwtp2S94/ObjJ+slaOeDG+PJy04OH8zs91OQniWFGfQCVwRc+SbR5iZdkaq1T+s/rNQDLMHQo3OCgy1xWGcNAKl2d5hagcl6yJsSSxqBCIG3mEgSWhpZeELtDU3cZnA6+0b31CIJXAgiYL0TqL9clAf5UoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743968994; c=relaxed/simple;
	bh=nTNdQsoeMVh4ggMOlFtvs0fDy5LdzFQFQvRANuFqliA=;
	h=To:Subject:From:Message-Id:Date; b=qPq6AjDiXROJW4+BdOSOJnd1R53me1K0JgAKhypRsuU3pXqw6l+7J6D8zCQJWEG+oApbfFsPjTJJuWovpCFPZ3FPksq/rBi1QUYxm1kC81chk3g1maGUsf3jf22bdJWNRwMJHFTpKK8cMDrEIWStVLlHiLxhtJVxMNAqYBYb3Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4tLb3nY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4tLb3nY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2F9C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743968993;
	bh=nTNdQsoeMVh4ggMOlFtvs0fDy5LdzFQFQvRANuFqliA=;
	h=To:Subject:From:Date:From;
	b=Q4tLb3nY4IcVVNvoGv9Eb1v8HfopAZJqHpa19307VFoteV6KxCJLE+9bFZ8VNZJK9
	 KpeKOXn0NUuOJDjh9g2G+Ja73ykTSUybcDgSgRSgScFgpITBL7VKmh8W+TB4RP8oWW
	 R2E70tn31+H2yu2BzuR26xTqxJsZLIfe80PCzjzj/ESjD5DCo2NfTxUbUpzrPoZH4M
	 xm9/jmWuAON4o2ltFc8QiT911nj3K9WHxnBz9O417IFUaHjEhiKc8dNc7EoU4LpVC1
	 D7vNuRgYUH9zhAEHyYi87CzgpxwU4T7w+E1NV1rkR6PXbi8FUVtYQ5X5DGV9EVevLQ
	 kYzUhq3dR4mpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950D9C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396899357.29763.767611592809130221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4972efaeb7505afe6237d53750919c023f5fbb4015c69a663ca63d4585a4de2
Date: Sun, 06 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743968993
