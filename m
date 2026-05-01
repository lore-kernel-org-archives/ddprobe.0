Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 211BB18859B
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777616854; cv=none; b=f8cobKJwFWkdHJzzk8PTn3jY1Aok/cSMLFJ9L5NRoDkp3bNZk1e9+CcLK7JiMy3RMhT7UmokiZv4/kliX2LfVkHA7mv7SUVzeMf9o4B3kjZIHfQaUy6CdOuwwXn6lE2rmpfjC//yDmwh2tVgCJbqre28dEdBjr3boqzlAd6xX38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777616854; c=relaxed/simple;
	bh=OBT2hal3ty8AWZvlPk7Jc5EpxtB6c7UrsLwnyTZsNCw=;
	h=To:Subject:From:Message-Id:Date; b=qzTx0fGsBOVZ6sePoBcxmjEG96bFsjSckWsEwoecyJ8F87pIKxYR973w48DyfbCRLGuzub0ON3PIptR+ohJnxKiLJdgQD8NLRq42jbYfffo/OhnXUr7CMKLewql8lG+p4TgW8XYDMHh3QUKfSFR8iqHrQhAf4NhrGaOeVV0M2uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qhI3xxRQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qhI3xxRQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD3A7C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777616853;
	bh=OBT2hal3ty8AWZvlPk7Jc5EpxtB6c7UrsLwnyTZsNCw=;
	h=To:Subject:From:Date:From;
	b=qhI3xxRQaYKoJGWIDxTIy4YQv5Fjz1lnLdAmeX5FNm+UdMcg2DJI9ufiq5SwvWkam
	 AgHa3qUyn88PXdp3/bMrKrG/L92V6uEkSFib21b7Y6KMfr3oCfZYE1QITk5mmdt956
	 WWdDvoCY/C+EHy6LW6QlDl7NI4XfeN+9fKeqt2J0ZCYv8d3ScfMdK0+hA3p7F8M/Wm
	 SCruQM6WOYq1hyLAiMeoILxKCxoneoTPWt77rMkbzGti1DBK4LkSQ16mzxhwDfTzPn
	 cCazh+hbsfy75Ms9VYi6pF3Agssf1eebUBBJ8CyuhO8HWcN8NakRXs1CDP1Q3rUt0y
	 C2bw0x/rd4/eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACF8FF8864
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 06:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761685369.22014.12234933942530655653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2bc9cd5a1ad89e6c2daae77c91d1879b54cdaf8fbcf4d0114e83302f5eb5f4c
Date: Fri, 01 May 2026 06:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777616853
