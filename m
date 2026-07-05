Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2246D26D4DD
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783259914; cv=none; b=uSn9M4O/gin8r9BUkAsqlkn4UK8tWcPrGhO9Wwd3C997UCp4Sk0a4wTPhTdMKBqYG5dQY/p70hyC5/KyR7ODGDtPJnkuO59m6WPPjBVHvAccBt2xQRYSuy0lXHYhLqwuKRaHVMKhK1DpXKWTA8kIJOJlC+MAMWhC5nVMcmTXFV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783259914; c=relaxed/simple;
	bh=jdXkzFZM3xVhgzOU24syxbjtU2Uu1f3aYA9PNwZZVsk=;
	h=To:Subject:From:Message-Id:Date; b=frJ1ZjxXvai+lAUJJY620jKcP8UPv6TiT2Rw48eYrBVkYCrUqn6YLCvkGppEGBP58WAHJ04EQLykTyLxzJWzVUHzPp2tq1HyTQhx6EPJwbD5pTyvYFrC3SBuex8zPIa330bd4dOsT/lg0XP9KPR5mTU94m/vkDJsF7zjCbeh5sA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5nCrjCq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5nCrjCq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB8EEC2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783259913;
	bh=jdXkzFZM3xVhgzOU24syxbjtU2Uu1f3aYA9PNwZZVsk=;
	h=To:Subject:From:Date:From;
	b=s5nCrjCqWwDjpgw5IpjAaGMWWYy8QdiqCy5t7uPDuUJ/uLz7J0FdG96faVZiopQhC
	 YYbxgmhHO5nxN8K/1x+FMqCZD5rLScKQbXIzs5RtdLkCUX+pnwczF6CqVbsmvZ0Hh/
	 9o/FR2V2xdtHXDXI2YcpzEPHeAiP3Wtd90UfQroXDxTftkUjOqVPVP8MPiJCxYgO68
	 qcvFebj976DKyrT738Sxarxilv2nInimQFuBpaH6DIc438PKJUUDEADSSAFR7FwzLe
	 4avTnRgkj549jljjHzYrase6WBoR5HwAZ7V9FcBooRx+jzTSpxXNDrAn4nVjfuGiJ4
	 8OiEyWwWAbU+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9260C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 13:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178325991368.20705.12410569290229693827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662fa8b208dbbdbf9bcea583e651ec0235cd3b844ec8bbb2a384061cb9d229a7
Date: Sun, 05 Jul 2026 13:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783259913
