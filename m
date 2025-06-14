Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B4DF2E11A3
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749920394; cv=none; b=lQ8CJG0uKHxdKnem7VzLcCo537D2z+471ev/Hkyho2cVX+AuBVBfEeiuEnA3rTmw1uD4pPjfGNMXhBflkM6ncaNjFfB28WTN8yygIyJ4zE1iC1SM5XEElp/OBisAYaT7GrqsjhxD5+2MkCZPBco9LVrIgCTr1jdVQTjBMjtPuxE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749920394; c=relaxed/simple;
	bh=S6E13bFImPPdMvNNNjpvhQpOJJdVBTBYrJLylbsIxDk=;
	h=To:Subject:From:Message-Id:Date; b=YGZj1bYDzUOT7yNaJqKP9WoCLWuOTzYvngRTj7L7lFvoeHroMcsG9X5Q2SjzAs48tEEY89Q157nH7t9QZUzSRwvbaZvUUT/FkTT2L3AW0f3+j/l9mT/UCNRDfnyJoydXMym9/GdwEYmWd4VbWHYRahNYD2arBMg4830ZhdmK9q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJlH1Tfh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJlH1Tfh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA260C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749920393;
	bh=S6E13bFImPPdMvNNNjpvhQpOJJdVBTBYrJLylbsIxDk=;
	h=To:Subject:From:Date:From;
	b=kJlH1TfhYG026QKe2tlz+vBgNe/pUOi5SCyXbTLAhWce1uo+IlUDkrGABUODI44tA
	 Hsshbtjj7e5YGm+q0IiQ3zf+Fe7fHIOHviJeXfu7sOJWUZNakVNo6D/wWFH5ri5juh
	 Sivr+BrFbPKLmBKR/YSEn9kr6PQ03gx7cd0iRLUg6y5IO1QvavYx/6ngzRZzXsUW7T
	 o8s5YHp6nMi3gchSqKdb03LEGC4r9bSmftCyg5/U3mB2zipgx+2OKc3py6RBvsRhO9
	 u8GpnEJBSJDMqwLQvRRPcxZ1LXxoMuDglIlqKq9MrxBvBmdUvqSmrp5sbosUAawDkt
	 ocs4GBTfQlwfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956EDC71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174992039357.16289.8316507101885109337.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7216fbb00039c10775cf050af01272dd39a541b94b766db0a61f1b3c2435dfd
Date: Sat, 14 Jun 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749920393
