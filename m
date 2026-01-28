Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C442D352940
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769613833; cv=none; b=XcUAWqJb/sMYTyLhU1ukY5LKZYquTeyomz9b/xIhUHV2L7sX7Q5JDeP1Rdcjc6MIHLpvsNusf973T+ri5h2U0g7I9pI09Z93p5GmKLH2N/8Ox7nqRYq9aem4olEmqo4INaafMyORqrZ1ugL59U9wg71cnyT+8hDh7aH7r9xpztM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769613833; c=relaxed/simple;
	bh=SxULze0X/e9enGEsgBxca/WPjPs62n0VZ7xo4k/8LlI=;
	h=To:Subject:From:Message-Id:Date; b=uOZbu9mfxAIh6qaGXyMi5RR02GqKReob8032PiwsRNcba1iJGqzoERVqJlr+1HJXXlGqKRH96qz4CkD1zLOZYxeOKd7zT/cvwlVZ0GXUwVYVXkl4ATjgHlZnUzfeqZOfjorZSJv0fkr8rMNvjLZTz/NVvp5XHBfs52gmrC74arA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TjADjSWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TjADjSWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C1C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769613833;
	bh=SxULze0X/e9enGEsgBxca/WPjPs62n0VZ7xo4k/8LlI=;
	h=To:Subject:From:Date:From;
	b=TjADjSWcZAHnCerYAXHLOZt6WaCct4K/YuLxo7XNBiZ2/vW3zwnEKOixw4NIMOGsX
	 MSdS9lBeIxiZKMG/SQwON7vb91GZtUqB+vPECr/dnMYO6uA4a6Ohps+EfEwdbvpH6q
	 XSz5mAc01BFD4vMCS8uQ74Zpu4n7lqzq/1+i9ZMka6FE/+eREaU+4KRnDXZC7btraC
	 efocl2NSjj8HniEUAICQNfCdp9/9RwN5+VnbypOWsTb+Uc9SyswX60febnUspIuOOH
	 gmUUIoyV67CnHMNF4be6UUHfbJrT15pL8XqeQ1L2EqpaRwP0vLXc2o/gcoWVBDQh2o
	 i3fzYFJ8bVd/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911CED3F07F
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 15:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961383358.18465.12220519922652544963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46e4db2d527b79fb50b496185673dc852952dbe39a6dfd41390d5ecf48ad0d52
Date: Wed, 28 Jan 2026 15:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769613833
