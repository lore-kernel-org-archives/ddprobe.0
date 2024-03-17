Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECB721D537
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 18:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710701897; cv=none; b=iwXx6VklbSSb7rqEa2sCkFu8mOSb8zVHv9LJUYRCCMmp1iuA33r5PaedWMwwSmEPiOKqKZrHYZPBZep3/LcaC5/AWh3bfnNTXq+xT7u//T6CwuwusbSZXfh/e9Bu/R5YyRm3D8ZRgQocjz5+HrX5p89GNTTLyEXI/zkFrGfyWjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710701897; c=relaxed/simple;
	bh=MDd/cCSmjqAkaf+5I5BS8nYUzzhRwui4JzwXeFtQQLc=;
	h=To:Subject:From:Message-Id:Date; b=uajNYxfITUGfV9G0EU9av6hgEUewWOX0vBJKOX7x0N123SOg0p4fWsRdNYFWYX9U4qjQ5yg23tW91Me/0CRe5z9Vqkl/yfvgCPtV5BuKa02myIZT6nRXtstJ5gdUwkPgmbJECQR74osxQfW7TdNbBXXpP5sKw9jN6eSLHXc2YEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C/2F7ya5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C/2F7ya5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E3E0C433C7
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 18:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710701896;
	bh=MDd/cCSmjqAkaf+5I5BS8nYUzzhRwui4JzwXeFtQQLc=;
	h=To:Subject:From:Date:From;
	b=C/2F7ya5KsTfJmWHyrNTqUVQ7LGIhP6iXyRSvkpXqWyycuTPwHLZ0ODpGMLM6zC5+
	 UbBNiLCTqcQgzEekqKALHKBR1T+ubFG9MocgGOnc+BR+0TNTjmUYV/tB8NwSQxNjqa
	 aShuLf2EwOdJ9pSfNq/f78esuNOz35V9Dr9ddy3b0ZTYq07MnU7/sLc6FBPEMV/68L
	 uJvyTuqFeVLVd+Y/tK0Bj5LswYxcvx7u+XqDNQJbgkUsH4dAQl4IfdPrljgx1ynYke
	 l2FtjNbeKTdYf3f0ha+r9HsGydtNVXwMcizr9Og3vH1EtvQyQBqheLygDINKQP50CJ
	 bSuL/S/GfD2kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60DD9C54E60
	for <ddprobe@lists.linux.dev>; Sun, 17 Mar 2024 18:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171070189638.15239.14146638350637691896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4efda6eaf33f4a0c1b80beecad4516826bb80742ac58dede042ce2547ca2753f
Date: Sun, 17 Mar 2024 18:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710701896
