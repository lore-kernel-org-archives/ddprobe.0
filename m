Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742BF55884
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:39:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718833163; cv=none; b=UxnxhJns3F4eUGubKx+uUdwmddJMkF6QnQI7Pboa8G1SQJUYzh8C3gXgqh9W+7igOUjwDFEl942L7+QLQjy7tF1WGFXe4Iwxm2uLB8wk5Mik4OF5ajPVWnT2IVUJKTWqBB+d9/hMhe2KIq2cbjIWLzXLEe4kqycXDf6aFh7urdQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718833163; c=relaxed/simple;
	bh=R6HZ51OqacnAwOb/bRu+Fcu9yU8x8WsOMzwJdjTTdJs=;
	h=To:Subject:From:Message-Id:Date; b=Aih3+nymUSIfi6g6SRDIxNz2uCzSO+ac8TYHNNn/TMiVT/p5xmKR/IfTGTxlBAVbp+GvBZzoMuJqr5+pZ17rOyKBXP9X9m5pk8skvVHiT+mr5zDfOHxbOVfK+iuh6IRzGPc8h95wb79FbkUFc2euQAw6oeVfqb8BrLhUaJ4xy+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YKZaA0Fd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YKZaA0Fd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E51F5C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718833162;
	bh=R6HZ51OqacnAwOb/bRu+Fcu9yU8x8WsOMzwJdjTTdJs=;
	h=To:Subject:From:Date:From;
	b=YKZaA0FdsUOr3BiHiZFp76FbqRhmD0PiLzy/AB62wAhlHRhqTUGqXmXyY7VB3g1uz
	 HWlOhSyYyIUa/TWaSFi0nhONR5EfrP95oIStUSh9umctCMEfvaEjLU/58MPr6Z4vCR
	 G64hVXnAnxLp7erjXNyMKZVzVysvfJyXJ3TqFBTNkjN6jFXMlnDBYgM8KG+A/W6Nc8
	 pQJjsZwmmq72rYaKYU8PT2QUGe3k0e1Y6A7oqOL7CxM96UQhWVyaWw6ofQ5dbyk1wU
	 j5pyR5T2vUGT9M3foZmdYd1RNxmRxrfb7RoHzNXs86IinaTICcLjflhgYt4RdSookc
	 PzzbFiPFeyKeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BBCC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 21:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171883316277.16480.2034837014829148279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3b9c1b74a67db1135db11c04c06479bb2279f05f63b3dd913c41dcda753a459
Date: Wed, 19 Jun 2024 21:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718833162
