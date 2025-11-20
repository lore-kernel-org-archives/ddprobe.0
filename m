Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3B6B2BDC1D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763640713; cv=none; b=VdE2VCqKa467Vhmmx00fOFEcL4saXqRwy+6cei7N2j8Fsh3ZB6hx4DRntOR0eQZEuqEu3F5xinmj2DNsUeyQVjhTr04ndeIP86cRxwyLVa7Z00YcCYnDsmMdwReX/PsaW58r4RrMHUFjE6dPV7DhR6fZ4MCv2QddUVBcDn08lHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763640713; c=relaxed/simple;
	bh=aRH5zK8RJR6kmTjimPTPk7wpFoWzxPha9y5N27cLE8k=;
	h=To:Subject:From:Message-Id:Date; b=VvzNan/m4GfuEQfTo513Lbp3P5LxqvCW3FSXQHnzA1l6F+/WbyIGPgkq5t5h6LkuARS4cMWJa83XoLrVs4GhsPGJbIacrdjQhP3xH4/UTwSN7Ba2R/huKxsCdMOCk0wNW5XubL4PK4qb1ys5E0bvhZn++bC89ITODyq344/X99Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cn6yZ+8A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cn6yZ+8A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D9EC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763640713;
	bh=aRH5zK8RJR6kmTjimPTPk7wpFoWzxPha9y5N27cLE8k=;
	h=To:Subject:From:Date:From;
	b=Cn6yZ+8AVQ2QPufjuY3+K7m4m+5qEhoay0bGKqoo/DaVgl+MtafICRooFjMNFAKZR
	 N735vCy7QiXm1QTaxNP3s6rGSxAuA9mcPV6khQdYNR8BB7U3hpr+yoISECSJ/yp01g
	 PNMW7sWhWAo2CwvBTJeYfX5MveGC5nrU/iT6CKg2q3HuCoN5cF68r5l4YsJZcweCXQ
	 7MfWu6SApQi2HHMDU1NhrWvHkUa+vXIO6smOdYcPUUdni3E/bALHF42qKCsRi3n08W
	 hliPxP8N9W4bmlvbMS+Tf2A1XxnA/pHtRzdpJcW9gmYzkNO0VHvwX9pLfkKtkvn8c4
	 1Z5lGubI/DA5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A6CF8844
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 12:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176364071360.15782.12318715708669817419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc9c921f309c4cd37e10f90661d885632c092ffbf5fe7005fb8b0251079ad09a
Date: Thu, 20 Nov 2025 12:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763640713
