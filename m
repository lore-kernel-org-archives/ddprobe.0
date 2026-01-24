Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FE431F03D2
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769268834; cv=none; b=Q8MIVaqfpetPErwIclDheP3sV1O4qrWXoDUv4NYmqi2ugfWDeVblrxx3wd1iu1sn3mM4V1csHn/C1jwodXxOQ5r1E7TJf/4sVE0DZYch32EijUm7x7XyGIBYmXo6Pt+UJOqVUI00gVrtesHl1RqhtWm8MRxsYEGXpclvRFHQX98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769268834; c=relaxed/simple;
	bh=ZD0ilQJz4wdRWllFm65VbLnmbsR6idPRpows1Oa3ylc=;
	h=To:Subject:From:Message-Id:Date; b=sWiIWoGwxPUAJB6gC+Hc29WJYSXS2azOE9ikZ6sKC38e59RUhp2d8CjalZrvM1ClOxozjvNQGMj8nbjNKieJzbc3RQVgIMJDF8avd2XIOA1TFzH8NIi52ZoW6qPtqj3AoZsp3gCqdfojk/4sg6YzI7tR0y+NwRR/Vwf+tFW7WRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDJCSm47; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDJCSm47"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E196C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769268833;
	bh=ZD0ilQJz4wdRWllFm65VbLnmbsR6idPRpows1Oa3ylc=;
	h=To:Subject:From:Date:From;
	b=oDJCSm479+Ps4VkC1NWwBcoZH6hXEe272NOX/yWyeEn9tn++RHneg6VCu4tGL7Qbe
	 n8hwUdz8iSXhNYIuKMoJ5hJO2Kz4NEjB8lDDGPR74WMKl+3Zy2pXMopShGHUOxk4oU
	 pqVAJnA5Dk3jFuUHD8LeAhDRAlukfj6pQBNki+OhSKgTd+3whcIc1uCv7q7ZfuhuL1
	 8gwTBN0dE7E9atPaJXbsIGQAR7AoSZKxnbZdQro/3XBRlyo2cQ9I6z0gJ2RifzRs2M
	 qPHJk7Jt62q9eRq0/4zYvo7r42S12B13GTu+b3FeFBFHlAVhUZOqJHHpXv+Zq2s2sp
	 L7o4lFxIX+Ubg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F456D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926883357.8533.10434966226951239420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e47dbe2d8d2b7baa7bbccccdd4d225f2b4c1cf47dbcd61147557ace15c7c9541
Date: Sat, 24 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769268833
