Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF66C2F38
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CD24C433B5
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667136654;
	bh=f9tG3Xp4o04tCpy2QgwPKUmXTg9swjF/8/jT3ClVsik=;
	h=To:Subject:From:Date:From;
	b=Ck6gu9rOWTC9TQr6ADUP3m+P7TH1q1RgL8ycJlZFjoZV7i4/j95aXX0GwX2xTmz7E
	 yWjtpZJVVN+Y1XnPkhXxA30qIkKweVYBCVjWdT7x8DN4TDW21EXdF7U7a+aERtTWVD
	 xdWGezAr1lRmc2aZuFXPwTJzwzxo7Ei84tOR8rTLYyUf/d4vU0ed/dFnUwacaHVgPp
	 Blt5HRS1sZeq70qD4jDskrRqNClYgsvTdGDDbgeexEp5Nmx18N09Uo8jRy4atUod7Q
	 pJ3hSaqzfYF3AEgkImpUB7Ut3x4BI/pF6RexMeuk7lJLv73s1NGkfz7nj1g9sWLXOn
	 Re8slutm4brYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53323C38A02
	for <ddprobe@lists.linux.dev>; Sun, 30 Oct 2022 13:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166713665433.31824.13007188103402498169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0663cb67729c1e00e548f59d3c2a0a27d7c5ce5fc825d50cef2f92fed97b7ae
Date: Sun, 30 Oct 2022 13:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667136654
