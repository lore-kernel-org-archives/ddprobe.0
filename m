Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F0B72AEED
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750742394; cv=none; b=UO3qdDZ075FkP96R52RheHg0iHsYSjSm7CqzNlbWhpEWV9ryY1jF3awCryn0I9ipTYtLS4BpHOxdmmZuLsPCDziiPAb0q1IEzv32thtcWXJLN8W34lPBCqL86R0Vr3nuV/4DA32UJvrFjpbjOtvbd2kU/gJDnLKsDW1ztL0+jCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750742394; c=relaxed/simple;
	bh=9uq8dHx4EURQa6z3yE6X0sP85PLrYrmbgsu2yZ241Pw=;
	h=To:Subject:From:Message-Id:Date; b=WoN/4UKFr6PjGRIqeQpekEml7qO4hRwwDHAd1jCT5Vbg9+OBfjqtHyPWe02mxZA6X17A6mmUXCADutYxsV6pW8wYK6j76F4QGbEz3k5IxPR0loklY9X9viEO6JAGwjIL4Yh77MndZUD2UwF1klRLSnOOKtssCVVwn7Kw4lOoOXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n3LJ61yU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n3LJ61yU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A06C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750742393;
	bh=9uq8dHx4EURQa6z3yE6X0sP85PLrYrmbgsu2yZ241Pw=;
	h=To:Subject:From:Date:From;
	b=n3LJ61yU8bBXG0C/hlZYPienMk3nunrVA1DHhjLj18y7uwO4G2/BhQEJXmSaNeT3f
	 o7VTtoqIKEdoRqqJgnxuQkh5j0Dw6th7ou5hqWgYrtZfKjDgVlKn2b4B2D+fmzQzXp
	 vqlMAw2uP17wr2u2ENvsBBXvgbGcbnvD+t82q/IdDPAJdvimekeRrgzVGOKnINo8DU
	 b/5FB6jLn0qFkz5I2tjlTeWK3mZsE5a4RJz+0cO3zBbFv+ELhVlLm0sEkd+JtCdwIH
	 fuviC0/gdP8kKJvDlOP2qdR9zi9YcZJJx+KxYsZ6OyP5y59kLFpYJz17rX6vmBPEyk
	 yRizVo/cDXidA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9161AC77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074239357.6661.3891421735612949228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444e7891f5506e83697e78dad92310f1fa84aeed31942e7e0e36850222891b12
Date: Tue, 24 Jun 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750742393
