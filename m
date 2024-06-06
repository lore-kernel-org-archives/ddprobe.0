Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC8F374FB
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717652243; cv=none; b=W8zq9N+wN4WeeepDx1VvbzH7pJYjdThbOirdA4GDL/F9OhRG8aHnZafCPATBOMkow/kjE2fB8l9BPOWG58etkJjnzPpYzNt00dxpMcLqRE7TCfni5SmBxsXNBXlyJQtnI3O0x0oDvtM1lDXWuBrIW3qDDpeiDR7+Z0R5WkAXwz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717652243; c=relaxed/simple;
	bh=R38xuc20se0QZ7eY7mWNNoj6FbCpLwVVnP+XWB2Q4tI=;
	h=To:Subject:From:Message-Id:Date; b=dmrr/y+WQVNkFWI8tGEF+NVVibpYG8vtzS95UKxRTG6s+Bh1KczqU1UkTtF1uCKbl0qLaO7O35f99nlTEbV4m3G6GFuhSV5d1IELpIbPLbelKbVp1ZlWRiZh/WHic4lJZJsTSGaUNmxMTWMgWq4F4Fj8tus3wLg699LClCiAF/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7iU3E9U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7iU3E9U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2AF2C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717652242;
	bh=R38xuc20se0QZ7eY7mWNNoj6FbCpLwVVnP+XWB2Q4tI=;
	h=To:Subject:From:Date:From;
	b=i7iU3E9UHL+m2GuGIQ//i0oe4VOrtFWCuImo9hy6j1BHDBOM0krqPS4yC0mJn7+bh
	 ulriAeh2QV4URmREUQq0ChEhTbkKYb/4l1BXbIYhQOl3n/NxY86DtYtcLISYjPoh2D
	 zoEWwypPaqNTV7O5AwVKy3vjzwGgBLaIyazxpQlwrIvBr7Kc00gD53M8OQwtEwmVk3
	 DDniQ9gIen38uQFLHy7cgcg/WOcMLJFpZG5RzapqXp6rN2UAG0IOeVuwd40PGBgJEe
	 92nizkzJBElScAMlMmYWApVXj9UHiKmBiMj6AAhQ/cC7uPBIFO4vQ+CdIoDyLXsDg1
	 Hn5hhZVrz0T0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5B7C25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 05:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765224277.21401.11408842106595856503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cae1d05228d90431162bca4101d5ee639bcf3782e610c73f70e08f24ffa7c3d9
Date: Thu, 06 Jun 2024 05:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717652242
