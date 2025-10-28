Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FF3734CFB9
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761673794; cv=none; b=n2FJsJisgfjZJav/CDjWlYu9iQF8r56POiSq932AzFrHKKEWq/mKTGAmr5kGaj2VI5KqxfyDYgm4/cvQi87TcjF4lmekM9oPL1JbXTLOz/8qhcYuqgW74a7IGH9sZtT7tHSEmuSJEDot4JjpTzODXVttAdNQDhLQZwSygcfylE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761673794; c=relaxed/simple;
	bh=EkI7p7R30M75FWm0SEUUwqGPSlOUnAlZnGIm4gG6sLQ=;
	h=To:Subject:From:Message-Id:Date; b=U2l2wi94v0MttChaikpbt0qYWjYUtlCmp/uLISZET/tr0YnoCxpk/Z0z9uQ4gaElV2HFXWcfaTv3KdLpC9xyiCZTYBAF30eWtV68YoTIMcFd11llGxfEWAyQi1ctSA5z2Zur8Lug7aBHH8nuvHzQ1s2sw6vBYD61S+FLrFGXKIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=arN2AH3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="arN2AH3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46B7C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761673793;
	bh=EkI7p7R30M75FWm0SEUUwqGPSlOUnAlZnGIm4gG6sLQ=;
	h=To:Subject:From:Date:From;
	b=arN2AH3WCndhu6qo4T5NFt5nF8OIKj3GiYNgJlSYfpOqb9We+e/wfq0L0iTDyqTYb
	 5R4VKsjOJ6zQAEXgLi2mzz5r5jYevKvS8qGV+/kiAIEW9rXL1yIsyOZc/SarYm90Hv
	 qSH4fc4qDt/XBRmbH5CR9U0EgKbq4mXQl7lfq0BKwXMX5hqRkwfJwrHEq8Knp81LON
	 WeRAwnAuumGJHAloixcRfdU2urnA3MJ2rwtqX6Fv7X6z22WYi0uwWwKitvVlKgv9z4
	 ClGtP+IkpmkzjXsRkR89m+GjHnKY2rOZywG5ehiXAX5D2pHNFOp22QHPyUIgc2zdYA
	 J5100dSGDlkqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94520CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167379358.4122.2660454943213629107.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a99f609232b17990b9559a4b4c412ace051ce50531a9649a3ab437df28bb3324
Date: Tue, 28 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761673793
