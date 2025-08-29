Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6CD1DF256
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756442394; cv=none; b=SPynXZHBi9C7xiuIkdYDW0C+9eysVvOwkKj5DFkczyKE0BEjNsJ7DB0BBmW9n0VsHvy1RT+uQAT5K6EfxYechtCaGkZuYye8X0jGHTLDFFBpTYJbBx6jAWeFUEFljLg9qbmI9o4ReF6uvCctDj2Nis0rWaGLZS7ygyOWZEoOQtY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756442394; c=relaxed/simple;
	bh=H9ofg5LfLF+ucg5aVF34xk1FYewLd1/nm70kTGYJd/0=;
	h=To:Subject:From:Message-Id:Date; b=s8/AMymVjhqEo1Ypi7SS899dJRFbrmbU1Zc/+DW8lggIP2r1zNHkKi2idaY9mf8bOEQheJQQaLFY8y8yOOycr2VWWqLPtfflAi3ry6+qflT4eHWRkPg2+V1LJq8I60UTYQKGoY/2E061S/OkWJ9yJ0U4O4ZuJjAcGifDgqEowD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MBFQHyR+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MBFQHyR+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D1FC4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756442393;
	bh=H9ofg5LfLF+ucg5aVF34xk1FYewLd1/nm70kTGYJd/0=;
	h=To:Subject:From:Date:From;
	b=MBFQHyR+tkLxgW3BuoxwchUhrCquW70Gh0NVzhKHCaLlkHbQ1FBYwNpQ9HDPO/fzl
	 arp+BRURkTVkVR5ltmW8A7Qm6go4e3pfwZ5rhkT/VVvElg6q3GOwc+dVEk5JnYAet+
	 17IGhsLRgUwDGjho7hFl4MvvV78dYyB/HTupHphR62NhkI7R5R/mpfGaBWvoZufvIc
	 wqqJfvyxImX4J/JKB/PjJBNGwVC4ja5/5DifSA78GcjBjoPLhqqgFfcmZQjcikk5g9
	 e9HCkMZfi0QK9r1c0HqjGd45fm4CcXg226k9v4AZ3bVQe9ll0v4yDeufmmGJXFoeXO
	 KCm7E+dCqPIPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC7FC8303F
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175644239358.32607.8247542611457519334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63503cf046197ee3b4c54da76f056a798437b78b0e08164f340272d4a6cddc36
Date: Fri, 29 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756442393
