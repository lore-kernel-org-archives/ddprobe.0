Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C29F18858A
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742572794; cv=none; b=EXSJj/+FEL+OZJf/G/EpvpQ3csdx10ya1nYY70th24EuYT/z9Ff7ACEdtb9/PYo3Allv5vvb4IFflsqOXGwVaObKW/ZQgHFM8qeiW82WD4s9hxRBhc3mVl8XEJm8YgbX9+zm2HPSB2HXg4rSz0tIYUYXo48LIcuHw2PXvkR+w84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742572794; c=relaxed/simple;
	bh=ghBdEqjTdCTvUvg0BB4vmMN6KIaMovsT6ncm3ujn9KU=;
	h=To:Subject:From:Message-Id:Date; b=pwqsCfYQuSqGZj4nlBxnBgZdcOCZYIK37lBEGAN3QpERpBsetj6qzR1UhEChvRj8PaBzY496/t6pO471j3LRXjqk8ikxlNJjOjEdeHzPGO9RjH3+KP9KAAmjYFs70VHDFqQlVLQ6QZ/6Qjid39UKAFr2yLdsPo2ODhhLCSIs20c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dPGnM78q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dPGnM78q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6D7BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742572793;
	bh=ghBdEqjTdCTvUvg0BB4vmMN6KIaMovsT6ncm3ujn9KU=;
	h=To:Subject:From:Date:From;
	b=dPGnM78qvvtQtep1LVstkvloN5AaB99sbXLhMgp5BeYB9SwoNcIfpTnLXrbcvpHUc
	 gM+pUIPQVWzexE7sIy1xvpKHOUJmAClcl57cAXc9ciVRqJZJ7C8Wr4wbFdup17pGJN
	 o4gkyk3ZB3mDP5X0gvPevkRIqbxcfv+fYPb0kogFdTdXNr8pvFm6nPDBdNlVAugm1q
	 zvhE5oMoevhR0HbJO5RR4vk5nBv6gfekceEo2UZ+q0CCai0OcEY+9hrpL6f7U5JGmV
	 phgDcVwFhL1DB82eq/T8CCQZwHyXGmunPDvvO8BcEB9adPqPczSeuM+w0phJQvB6B8
	 ZkXjNJZPIX9Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1C1C36002
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257279362.20415.14311157149287029820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0310ec1b9e1d8ec0a1373d8b0b1a89f59f3f00a0dd850cf4bf9ab6918a506071
Date: Fri, 21 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742572793
