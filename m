Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B2E2746A
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744467594; cv=none; b=iqlCqzUw9PxmYJWcykjj/y01HY0jBacWHYpvyWoSmLkKk089VJsaXyvQcCzNCfMnmZCSv38jHxBI5iitPQC614U7PzQ2onqdN47slblOSgv1aFA4Vt5JneMJtaJf9UWm17JWQdcwjjCmclFZsdf5/eBpvZ98iunaOmdqFRo3jCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744467594; c=relaxed/simple;
	bh=FT0qOXzel2YL86XHpK7xtF0AxgTpCzV51fXDMWGYGdM=;
	h=To:Subject:From:Message-Id:Date; b=OuKMKm7sb09FS9o1cGoPtbbRFTAWgTNrW+PFBzgH9peB5903LHdyVb4vhBpodMxqEPIhPx4Nmes0lTNrasa+FcU5RGfhLYynsOJYG8IkQeCuJOhsJ9xP63ghTA7BOdBp1rM/9H+kUu1QPf56gDL+tiaQxlrJ3y1J0qArmCGW+lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAZNf4o3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAZNf4o3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1DD7C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744467593;
	bh=FT0qOXzel2YL86XHpK7xtF0AxgTpCzV51fXDMWGYGdM=;
	h=To:Subject:From:Date:From;
	b=qAZNf4o3Z/mI+eUDJQDNq0bJZ3B7L2VESvDsf5XbPqDG9cQovzHX+ynu3NTlmimNX
	 CklAFaUdf/J4/69zJQwv6iYVDvCxabkKjlBG5rcAPrTe8bXAW/YvjDGWgk65n5eil0
	 OSa0AA1USYUAWhK9OQb36Rirr8QXioB23rYyhkT7PMiNAP+/dbS/X2i3d/eowHE2qS
	 yabyAaQPJ5xzQuvj7WLz7wTPA2FIR1/zzGIpQrJgazSktVTtlQK335S2WNS9+ZZDmo
	 8/pgXVFElVRo0wZCB1s1LHZ2gjVr/kmfxWVzc5XIe5JRTZRDAYQVa3699aW27LL9uo
	 +sG26EaQgxhHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96992C369AE
	for <ddprobe@lists.linux.dev>; Sat, 12 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174446759360.12960.5271286047613469783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9065a04b3122e61611ba357af458f2b8b982a4d79dfc9e5a84c75592176774e9
Date: Sat, 12 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744467593
