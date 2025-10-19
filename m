Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20E822472A8
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760916594; cv=none; b=LAwnkiaBVXJ12fV3Z9W+LLIuA1/fL43XFZfslbrXvWeck2wGyN/e7qWoG002CyWgXs7NmcfpPuIE7iZCX7GEhAkzTvKLu8uitMJIN3Pj2dgAFV58NathpT7HN5/N1OYF+0/z/382yW60WnkKZK+H0mrbvUGmMXaQ/Jgpf1nfjLo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760916594; c=relaxed/simple;
	bh=vU+rAuX4b9snbNHtCaq83baPYzg0tMULFIgnvUwqpeg=;
	h=To:Subject:From:Message-Id:Date; b=ahxswQP3FlnFhRGOMzY+c2UIji2krNqdeyl6R91BVKpfzCyqdSCpxgopzEfFhskOjiRVy8ezxNXbbMceWlMmL1JV3GjQaXxqWKsu4k8pfA7ft2rqS1dtB0tZee7gd08S8vgUD7MR8it6JOQ8y2x0Fb1u9uhGlxmhfMW8q/OCU+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oqjHzFeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oqjHzFeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA7C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760916593;
	bh=vU+rAuX4b9snbNHtCaq83baPYzg0tMULFIgnvUwqpeg=;
	h=To:Subject:From:Date:From;
	b=oqjHzFeoqRbhq8Q34EhBIkThv+O/B3bdvpbztpRng8V/VnTjXTrPCrfT1gEtZzf17
	 zMGZETo+kWfzYFmxElyIT55eQi+j2InZZFURLfUSNUxo8Rox0ueFx8E9kEk7QYgCmP
	 KB8HHYT6sWxXm2n8i0lcHWmQpZJmQFzT4J6t5uU99FuAiUXsONSOzLncQ+5frgECtU
	 uuTjnmc3+d5SL/gHj3KQcaCp4J0SgPo6ExSbKHBLOnNFQE/EYx8NelPvMW6logY5Lj
	 WNU4rv/ho7wA96JRvSjELpqsnpZ+3yNFNYK1Pp1wlSG8cLJNYzQiXJ8KP8O0h0lC04
	 qbpwpKWH9j4JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9253ACCD184
	for <ddprobe@lists.linux.dev>; Sun, 19 Oct 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176091659358.19709.4926532516116720789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 769a83194bc24f9fe618dbd5d66e2546c3014499273027f46a8f4568eaa0c690
Date: Sun, 19 Oct 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760916593
