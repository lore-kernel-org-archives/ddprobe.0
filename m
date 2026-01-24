Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2618B191F84
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769278434; cv=none; b=BHGNkxZUBGpYYR+HWjbEhPBmHVLzyJ4yGcf2kOe+mCJyi9cdT0+IXKTH+bTizNex5anoremYJgJV4fis+lqTtuBmJK46Uq+jMbYDfH9N/2sKcontimPPPWraaIda5BN2qnrNywUX7NRSibQ5Tt3j7IJoX8hZFz6tvbjZek0u1dA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769278434; c=relaxed/simple;
	bh=LG1j4P3zaguItSA1fhco71L8kFPAJm6euU10B+RJKgU=;
	h=To:Subject:From:Message-Id:Date; b=J3/k+wWQdbWrlyDveEAvzejoSw8Erw+ex6OJAvyWBFVeloq+g4nhvoz2jkHH6jsi+63T1VdAKCUOjT/8THhWP/Ybgevm4RT+WeB9T5AsQbk47GiKdGME/bBj1y3y/zehAMksCrYI3w3yJ+Gu8q8k5lY6bQu0WUrEjrNLE9SEKy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BVC80I9w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BVC80I9w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D1AC116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769278433;
	bh=LG1j4P3zaguItSA1fhco71L8kFPAJm6euU10B+RJKgU=;
	h=To:Subject:From:Date:From;
	b=BVC80I9wc957GJ7aoYU6ZJ0/tJVvD5u+h1N2KyOY/fY5P0OCzegBCQQ45HUY4Bj6o
	 GzOP8Rbe7tQWuI+vsyNqg18KKH6IWWtJ4cNMiB3tIGxtjBzBLwJwkgj2PG5dUOzu9f
	 T4MveAOyQoWHjLMX+rp1dcy3iMmKhL9uyQiMkQl7sogiO6XNllxKyQRvkTLMJND28p
	 za+qj0hF5TowbuEjlgp4+hCLrjD+BRqjhomYj0eBxWjHZBmxdaWJl21P9pr0CCmPKl
	 5WRtKUiC4JuUethBsZE0QpHWZB+U3r2B4p2mmnLkn0UwjcR8zHS94fmDlahr2A+JG/
	 Tv3dg+/yFzlqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D64D715E3
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176927843357.9619.7096483634265387275.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd109844e8771b1896cd4acd50916a0e5d79f9565bf38e1861e4ab14c8cb5be4
Date: Sat, 24 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769278433
