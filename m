Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D65515278E
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749837594; cv=none; b=DKWi8zigk/eAXzTxzAmbMObRbZ1tNP/OMj1GGBxpZ6OtBc4wMlk95HZ6RSndMswt1wgTNglwtkZZB3w1isCd+G82TiZ2evby3IY3nw1a9kkqTisVHGJo3565GpKwqPehmBM7ItJtumAU1b6OeInwTwqj31pcWutleysIEFaQO60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749837594; c=relaxed/simple;
	bh=XF1LO0AkRDLj0cBSe2U5yWEG5AGdMJZ6HEjoIX3QFyc=;
	h=To:Subject:From:Message-Id:Date; b=qDNrfwhC5vYzVJA3seESAwHYdYXMuxjJCLNfxOT3ceO1zPhBwErX7z7EYtrSlj9vVM+ZJNQfogBE3zt3UsARfTUUNBNTUZs+LF3S/9B6PHaim3FQWtqfIlZQNTXHZHMbLadVMuFLtHM5z4GfqlPZqYcKb+AZtBxznXb1VEc9sLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APPOlMO/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APPOlMO/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A747FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749837593;
	bh=XF1LO0AkRDLj0cBSe2U5yWEG5AGdMJZ6HEjoIX3QFyc=;
	h=To:Subject:From:Date:From;
	b=APPOlMO/4oCdsrQgiW8WGxYf3pdjB+IgrFxnQ6gldqyJgYq6CYiwkZQFu6u5ZQyLR
	 ko4jTLiw5AU3Pqmkjsx/54YNJdsLjVEGsTiGo74Y/aZrRFCYxFd+h3O8AzWaW+BZ6z
	 b8+o0saDo1Ek/tb5CxeOFiYKC+DxIThX/GcbSwsDMf+UcTkG63A1klzjLmECbe4UfY
	 wec5oIYs/9aWtRzTZe0CTAYYNZNWkP1jF3wK6fz+GWUbix3pJGDjeG8sD+6f2XjKEW
	 LT2LlRONTJwQ0qD4/ceAwt24HI0cJ30NS2lXw6FJpCyjwbLzaIuT3E9kIICquGN98x
	 RZ5+rERhWKiyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91906C71136
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174983759358.10506.5369502124557694592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5d7cd5cea19482d75eaf655c3badbcc84fc6b794561f9a65bf2dc4360085d88
Date: Fri, 13 Jun 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749837593
