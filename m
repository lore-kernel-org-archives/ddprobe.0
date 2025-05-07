Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B14D7260E
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746659994; cv=none; b=Bgau9/yCz3jDCbPZUvbI4WyrqaMXjG0nIH7xew0hfc1rjQSOah+qhnNR9HIkIhe8b4qc3xrxsvYhcTclRHjyV1mdq/PoabOhF+69ro9uNQ6U5knpOpnPyPdIc0Sfh4jxTAgjyo7RRCdb+0xhFfe1nMz40Rdb8WIt2qkwG7wGFgM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746659994; c=relaxed/simple;
	bh=sxuN8/13Qq2qU76JC7PLkoP1Y4pRZsXtr2YZTnpSPWU=;
	h=To:Subject:From:Message-Id:Date; b=YGOMNLIl0kwVT/Lw2gZLVB/4njAXpnm3EduWxDmRlE3ot3YqWcs1DPmca3OX9wlM6S87h+K6U+OUg7odOIWogRkj+JJtCN3PK0geeWWC+LDjZTJ7UQ7cJ7Wbos3wkD69Oqtm2JvjAY1dHML6QFwFaBanvrmqItJVBINRKsnYLsw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B+t+yJLu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B+t+yJLu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF17C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746659993;
	bh=sxuN8/13Qq2qU76JC7PLkoP1Y4pRZsXtr2YZTnpSPWU=;
	h=To:Subject:From:Date:From;
	b=B+t+yJLuuyH+DdwW6pLVg7ZhDU5XyexIaz2Rtr56OvVdL/L59nKEhU5iszudtzeZB
	 frAhilZC/EglQRqqpJZ0obfZiJcPNrwpckJQkm4jQiVoDUJbC6OHar06WRROQ0mBgZ
	 b76cFDzE0ougwuisPKFzFN7/eYt+JCv8qfFSh3NaH1t4hdgHF6//jrdUtVyNelA0X8
	 iKzXFRH3oZSAyt4BUgO4D9S4x9Con9n5+5iDqu3XdgXu/MtzflEe5bjc8cCH7O1cX4
	 ADpNCmzdQ9Tk4vUK69/VwOmd2HzZZpwCXNiV+v84n+pFKdWw1ITVfjBYv1TaQ0D1NJ
	 MZctp+mZdo40Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E55FC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665999357.17883.5958684801021805458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2904faf750c96f5adefc965abfb763c8fa93869ae676a5518666c4e582fdeb
Date: Wed, 07 May 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746659993
