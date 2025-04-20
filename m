Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD7E2110
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745119194; cv=none; b=b5pteNLs6kFoj2UK6FU5esoGIgy0RH93z9vqoGkqWvM8GIVc2ZDMwTberIJCq+apwsEJyBlvk/mfwfLlJ4DGxqiPv8XEQsKaboFNd+XRGeFImMz8d5ZSxMksqI9NJqNGbMexAg0HCU+XGJkDZChyqLDq5vq40EzsS2WKilRPj64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745119194; c=relaxed/simple;
	bh=K7My4aOEwJEnTmfX5raDxX5G73t7cZi8j7kO3QC/qkE=;
	h=To:Subject:From:Message-Id:Date; b=U23qIfZJ2qm/xg8m33L7vd0Gble+F6H67capUSnZXXP3Q92jMsVAF/R9+O7DpKvvWoWzDnVtUY2g1IEemfBjOchHhVWssmV+cfr+p+BQidXsH3RNJkhsDC6mtBfs4vwJBqNCrvmQzW8QMNfT0yk7+j75io9P4cwn7S6m8zoCVts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IuqtZVF/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IuqtZVF/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54B7C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745119193;
	bh=K7My4aOEwJEnTmfX5raDxX5G73t7cZi8j7kO3QC/qkE=;
	h=To:Subject:From:Date:From;
	b=IuqtZVF/vz3N/o+h8EQ9v2LTZ63VQkLiOQA1XkhfzyvKyI9MkauUPvXpt3HZJm7oU
	 X9Yy0tbtmN/MYVlHr8EPh8n1WJkZH3bxPg0bC+nphpURXcWnK3Km1oO+K8+8b36mPD
	 VaA5R80zN+lqn8i3oJRzqyYMsuwFUEhQHq7y7u0JAs9VcaSSnhrLdI4D4WRSPwYIdd
	 aEM1XBY3OamzAfbEVKWZur/EBIasm6N55ormCDAB3a1JobJ0n4L3ywi88N4pt2eDIP
	 LTUodKS9Y8O1ce9Jx3TOVlL3ulOFEllsu/ahXhfwSuXAbPOiOMwjrXICoUroOU5+l3
	 VZ4kfWiMa/pMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F504C369CB
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511919362.15810.15671049935775833057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d63fa404361df723493373390853df208215a5fa72f5424f4d2355f5e01daaf0
Date: Sun, 20 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745119193
