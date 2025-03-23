Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 493BF41C6A
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742708394; cv=none; b=JXpkhTZe8m0bOjjYQ8TvoH6Ks500mgTfEa9w4ERM4BR1jHkycBOLwm6Czx7aa1rRoX4G1jggOt4nddByNi5pugEG4rENa8c2N3XL9QpiW4cIy7xngd28ZeB+G5hrpCIH6p+h4TcQTrCDVWlMkHQX1mS1MGC1ZN+a23BFG2s2p3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742708394; c=relaxed/simple;
	bh=RVUCUYytp5KnDHzmDdpi1NBuBn8VgG1PttGEy4npVcM=;
	h=To:Subject:From:Message-Id:Date; b=QrxsU9vW7NkKe/cuU9OEuslZKhuPBAwA3ziPsJCtUX/L7QaxHzADgF4PjrsA+6HcF0nW1p+DsZq29DCV6OuUI30m16ZVGwqK2pUqYvGNltOC9obWDtG7v/wiN8EqAwjT9WkW6jlLri0B2TbsODRdzs+LA5Vvep4YWIQj4bJZ4iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apMU9EX4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apMU9EX4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9897C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742708393;
	bh=RVUCUYytp5KnDHzmDdpi1NBuBn8VgG1PttGEy4npVcM=;
	h=To:Subject:From:Date:From;
	b=apMU9EX4Y1hyTQgLLrDHhbiAD3Vv3QActFDu7lqtJuCIuQl/82PrqyV+it7zzzPGP
	 nYnH5WCA+7QFp2jVhB0Wk481jqT1vmN/5UQ35s1NMMZUgkiLvjzuJ2Y8Movebmogkg
	 G9XqKSN9/Z2sTs7RoWN74uqecyYHKGlDb490Z6uXtQdvy3zMQZVlea7oVERjQfZRqg
	 dU7sLGd1MbSxk7bUzWDP14CAsn4Oqw9WrZo0ewZGKG6yLUxFag1ByTqDiVwVv/jGRX
	 wOCalFm06pHNB3q6LfI1fVMkismdsEAUzsX1u9l1oYVljZ9s5tJsUVFmXy5iDrcGSD
	 WouuBmXQkPdQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8DFC28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174270839363.20463.12119731750228864541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e8629e04e418f44adfd1f09ca5bcb6ae567054cb3fed4958282a0a0f40b8cc2
Date: Sun, 23 Mar 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742708393
