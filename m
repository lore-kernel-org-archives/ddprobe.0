Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB8F1F8AC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746605994; cv=none; b=qPIWJNu8lQdpzGPl3nckkFxbHLiBp/Mv7u4NT7yokSRDq3cYJnnzB1vtWiLyOJTlcDF3jCneK30j3AAcXL3xcNGuVtYtEbwk0lLmJZr4XT55venZeBEvsbvivwrJLVQqV4ruLzkbRePEo7IqxWG2Mv1LhtrQB4LYJFcVZ9HQPD4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746605994; c=relaxed/simple;
	bh=+aj7E3R+up1DThyU6s2P4GloAGW6JTZfb57WEzcFcns=;
	h=To:Subject:From:Message-Id:Date; b=BeBmfB5dNcCCJbcXMRQkaq3FHh6Fae9CtX6VtSKZFU4dYFWNmmrSLr4bYBbKo0s+MEnaW7DySCZKGWCX/gsB3doQLxT+pS+2sUF/eQ2qDwDUIrsSgEm0MvdlMZ8ffb2kyLZ3LRilXcIxySBiYSWSN5ppjaVllHixa37KlQWo0+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9oFs9qE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9oFs9qE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F51CC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746605993;
	bh=+aj7E3R+up1DThyU6s2P4GloAGW6JTZfb57WEzcFcns=;
	h=To:Subject:From:Date:From;
	b=h9oFs9qE4B1/Pf34/DLSzu0nTXcPgKkR4KyxydjiZMjXUY4KfszAl5QZtns48729G
	 zR6l6bX+jtn0ZHx+OWj8qkdYrr5gH4LKe4QYvyI6z6O3//HJ31iJMLHqzaU5WzD2tS
	 2HmydLT75HdcDFSy4wfdEqbTlACUG8aNaHdDcOEjpmpqjrh0N05C8tldEaKuvBluWX
	 OhSB+dRwJcQHaH6ufLPhlIIwAa6mqmJVzY/TkZG8XerHiOT2pqJxwbnx0ZYCURNJxJ
	 UsMJM4Xicl8+qpzSLTOWb3lAIoh8hKULwtxb4paIdX19WP2P2pGoAF5uPDjXsa8wLL
	 Fj2i5LHrw9Cug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBFEC3ABC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660599357.22996.17104162754498995095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37daf07f106a3777f67e6ba73aeb167d9dde9ba246229178c2f13516b5350bc6
Date: Wed, 07 May 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746605993
