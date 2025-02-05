Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F87121E085
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738734954; cv=none; b=RaXjCEHWyd0ki9BABjAYClXA+Lo6yZTdv4frYJ0mGLmxbc3WP3jAKmDvQf8m5f/SZ5a4Pz9drVoxRxLx4i06DeqBFQs7JSaxPcUIkJ5CSSQfraYg4Ktp7R/WHsR5UR5xJr/ZpB9trigQ0A8Omvw3k9s+0OLeqjGxrqzP60iGLaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738734954; c=relaxed/simple;
	bh=GsNPP6QF/mJKX27NExz7tYXrmJfg5Q/IwACpPIBa3Vc=;
	h=To:Subject:From:Message-Id:Date; b=gPODVqKZjh99zkZ0V4qQYbKOs6vc6Cl3FpI0rg4K/NVDDARP7gxtbdCEQCbBpGmG1rX89iZD7uGhgcc6zeP4bA4WcDGJ4qObJPrHCgm26OTJyIowTGmuyDo7TqPhjoUFVA3W1O15Fm/nZaymhwE8PXf1jeIJSjt40xxTHOj/SNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqgLj0l7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqgLj0l7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69D5C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738734953;
	bh=GsNPP6QF/mJKX27NExz7tYXrmJfg5Q/IwACpPIBa3Vc=;
	h=To:Subject:From:Date:From;
	b=bqgLj0l7I38Gx5LA0/GVHGHHkctJVFOrFAzIviKeC6kIhClan6AJdCniyMyz7OUrJ
	 9O7QVS+r9+TqsbjybCj4xra68KXpD/qDiL+lA3b7ud+R0ro3FQRgDeTJCEzGdnlsBG
	 tqsm1Ai0PNsTsAW3LGFltz5nKFBmCZhh8IPTz0V6qEbu9xCtlOkNKDIV6oYoTqmaod
	 gdTKgjz8kISTYIWOPnjDX7UbQ3f7yB4GlDKqMJ1t8gRJQkK/ozTVdNcWRkh81q+VqI
	 JtTbGABtlB1bGhv5HZznqV+NJ2Vc+YFHBSIehb2N/9YZUlTZ8mYCBC8aZEug3fhmg5
	 jx5N3GXW1wxNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C93EC02192
	for <ddprobe@lists.linux.dev>; Wed,  5 Feb 2025 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173873495362.1705.10966453360754641229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96cc967c896ecef980a6143a31b049f6efff3564003520424cf698bcbdf948ad
Date: Wed, 05 Feb 2025 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738734953
