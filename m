Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E7219E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:26:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720531583; cv=none; b=ejFYZED7lyaChrHbQSVa4w0NnW8IprobHK5xW4bGr7M6XWswUS0jWK1foPBuGkBubiUkwX3nY0h2kmZIOxm26F3pSiu2T5tdCeWrE0vsf4EKCmZs5K3P6cjSL99KdNpldNnaXe6vhB+6GLE3qNQ4RAr2GG4ifh6HhxzSJ5eEv0U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720531583; c=relaxed/simple;
	bh=OEeTfYV2NZ/fooOnYNfBIMW832YdZAJ4QiKl8nzt4z0=;
	h=To:Subject:From:Message-Id:Date; b=d6a9jj5xGBcoGlE5dJHypdsMU09kFXid9XSOuSxLYf34Q2E00zkelxjnefbgJYEstAjGfDX5TOnpDEtTAWi5TRmpua/4i1KuKOUm/MWc2isU904D+/lEaHPuL0J0HIBMvssrayu3WyXxvAPMCMlxqoF1cl3FfgFr8t+cHcabrA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ed9Yr6zF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ed9Yr6zF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0055C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720531582;
	bh=OEeTfYV2NZ/fooOnYNfBIMW832YdZAJ4QiKl8nzt4z0=;
	h=To:Subject:From:Date:From;
	b=ed9Yr6zFvc7zwcH0YyPGvuyPoSz/HoHBJT1dQ1JPU29mLaEPbSBf8xc9MSUJ+Zf10
	 BA3VjeCxY8NwK/RrWaDi/W5l1QcUS3Yl3jDvGu1WoJRahjnSOjNwAJ+xYYhkH7EOJU
	 GwMwVdYdDqxu0glK929tde+vnWcb/ySAOFewOXIeGhvJLQOTNL+C4VgAmFrfEi6iZM
	 c76eL97bf7lKUoagxv2zE+gKNp4/c7oQWHkBq81hjlt4t6orec2lQ9JIzBiocPE2Et
	 Fr5EB10MbXs+3G/51i7GDxenu+lJ6JDC4UxHMGXx3iQs72ElEJtYD5Uj6oeHCBf5bL
	 0ZO56b3HXf31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFABCC2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 13:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172053158277.3374.4537466181753536384.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85787f6ce68c3e06a21c4492cb83df6bd592304a22d034be34deabfcf4ae01c4
Date: Tue, 09 Jul 2024 13:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720531582
