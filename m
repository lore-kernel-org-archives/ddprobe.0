Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703B1613D
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717908443; cv=none; b=VtX6LpLWgU/FCoRDJDKRwq+I/qXVNLDjGqTvAkpO1PCfXL/NhDtrvprtHXC+8JhXguyTOax07W5iScNlhVNuI4lV8xQeZUjt8OObgspLHIUHaMNTAiHf1h8vaLSFUVFdxS2KzRJtDjUzN86K139UbMcaotx1UXPpmrQlvQnsqnM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717908443; c=relaxed/simple;
	bh=CKv2oLsFeQsQ//KvgaVpWNHbyrmsDnVDMYH9YKBBxOg=;
	h=To:Subject:From:Message-Id:Date; b=UOXeQ0g1HtkzdapjHJuzYlW2XV9+e9GGss+XzJX4Kxb3/Vr9/3Q0XkrAlLLwQIJGdW5dQSeZ9Ezi6+oVDDJQaxIGaSb6WLNxH+E+rI7nPLYowWO4WQJWKw6rECH3K1uPsNzXHCaaIDUX9y56QEk8tYdbh+KykvcvJ+j5bJLz/VU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UP5xEWsI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP5xEWsI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB586C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717908442;
	bh=CKv2oLsFeQsQ//KvgaVpWNHbyrmsDnVDMYH9YKBBxOg=;
	h=To:Subject:From:Date:From;
	b=UP5xEWsI0qapllMAFePh1RqRC+lwe/J/SJ0tl5xNqYjeltQUc79ZUcMuAgzytFiza
	 CndViCZeOjnm+KI46ELYr8++Nr3GQTTt3NQaHjJo7WMo8N7N3/hxxPBdJv/E0eJnfT
	 Ue+rU0LaVn23kv1lwJT+vmOJp7aHTp/3JO5Q7DN5NjbtqXa0JhFzKxlBaM9NvNzNrk
	 FcXlZSNhgA22Qy21PMSmnt15rzs0p5/U2RzLL5hwXsVJgWdIu2AzB4I8MG/u7xU0of
	 9CeNXashSAdCHLi5hgMjMYClF7Sr0rp8PgvbyP0RSMBz1KVcU1cNfV8BjrFpfRrdHx
	 jNz9I82ysT2Aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF485C27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 04:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171790844276.8529.15734881411332743968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 172867f787da83042736963048bc870b76495cfa142c71597e2a5472b828573f
Date: Sun, 09 Jun 2024 04:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717908442
