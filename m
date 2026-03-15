Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D10366557
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773602694; cv=none; b=kLlFJAr+0n8VlvsvlMUO8GRJNYkl5CxU/EVW0S+cAqOzZ5b3CG2wrYxGBwuyz7sQbcZn0rtqYNyZHaKG7dFjmeYTym1Z8XNLj3nYsBWDOqsjdfC2GlY7cv2dR7t592rx1TY2qDWyqEESkJYINyhj6/iuDuVWst86eRYzNyVz0hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773602694; c=relaxed/simple;
	bh=RIvKDtNLX5aYtmkZjXhKzVG6jixJsMMf1t8ctXrrJVs=;
	h=To:Subject:From:Message-Id:Date; b=ZG6xf7brMJlHA+xp7gnNjp7dI33RiUU2tDgOpL2i5m2vidmyf/1U+0TeofU899tTrCPHqy3Zq45ngn7ctiL8wOdv5uY8BsK2PnGXcyKC2ZbhgJie/eekuIyT6bDfU0kWOFzn0ilHXVaeUo7NlTkXPejqwXSkOfQjTs7OCS+5+xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWCHLJ5g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWCHLJ5g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2D48C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773602693;
	bh=RIvKDtNLX5aYtmkZjXhKzVG6jixJsMMf1t8ctXrrJVs=;
	h=To:Subject:From:Date:From;
	b=HWCHLJ5gmwQHr3vBcyg0RIYrE2ObqRFqMs9mOihqC/8cYKnvclEzIZx6lmOZkZ3uh
	 cb1iEhE+juim507OywwDn6+83uMaUCBBLY+5ugxU78gE03CRMm4BQvuE+FOOZBTeh3
	 CSg9h9O964yRVi6jyTvWnGZbDLnFcRwNDUadtrdwk/eB0QbM0drkSejYjR/G+sekLo
	 yTsatRbXgAm4Kemb1Vm10MngiK+0C9S3k82nvlt7VYQzA7muKX7q6H7LUthzT3HhbQ
	 7qpxhiQ+akkmMYJJqzHB8V66qnni4fKql7I7SQY6Sq+sC3TlmE6mgR4Zv/HdINUVCN
	 O9hrW8iHTxVyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2524F3027F
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 19:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360269363.20871.17439724306460772023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 545933024acf461f9daad50f0e7cfbfc072e2c335a810f2b4248e1dcc0b6ce4e
Date: Sun, 15 Mar 2026 19:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773602693
