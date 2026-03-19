Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F10BB3CCFC7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773921894; cv=none; b=YRPuoH1/Jsnbcb0AfFaMXo7lgaqdsE9CMpzx/obR+3oqqnMGBPKoWkcCBZcec/1y+2fTqXJiB9gpJbVXivBis0MrQWqQJ5NpFDoxfeWzk1ZZU4Tc6BUBIOvxqcjcliQDmwICQ2n/LCiQrZyeC8G2Vdn72wdwNWGHrUqGLe5v1rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773921894; c=relaxed/simple;
	bh=uyb3UxYz1kZfMqWLpX2mp15206Gj4AkCZ5UXQL1dAqw=;
	h=To:Subject:From:Message-Id:Date; b=fHa9ASC/eZR3xx1te42D02kMc0jFEvnm6B4QaRnKjQzuavY+RYQadVSZJAz99lz/WfwGhAbJtXTjZA8sFpeN1+QxsVXw8cIcXtWfjDG1JKQ0di8RxTCA4KlaATH6R9BXDjF7tDHkJICXE8+x7FnlU1gomAuEZS1Us4dnlUJkkMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l3IeROqe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l3IeROqe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F748C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773921893;
	bh=uyb3UxYz1kZfMqWLpX2mp15206Gj4AkCZ5UXQL1dAqw=;
	h=To:Subject:From:Date:From;
	b=l3IeROqe/bT6btybLKdeFFu4+y8q0bxZJR4JTpbgoLAXGWrW9Qs8R7+Bc2y6KLDVh
	 UqVr1CKHjoWhHrQTH7jh9Rn11fn7XvpCzwSLhqhQNYpEqN8dLfFREy5l4a3cvh4rLt
	 piby6ftpRP+E1AMVtFIOwWJvUO19lScl9jAEBmFz58/vrOeecUzpZnpQIns5s2uiZA
	 zVpcwo0+B/AswkH1NPEn9jZ9Wa7ylCsBsAg4o8PFtrJp7xt9wix+6IQc+huPSAJW4H
	 uMeyrZqaCSfVA9DzD+fetxZjol6GItEsAfDazW0z8+YV7gfithXfrcHyXsJGC2k/lQ
	 YC8bHkld5QtmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F897108E1F7
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 12:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177392189357.18683.1497913880348188611.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5726aec591dcb81f80c9d1579842014f1452ea2550df7bec97a9aa0df2c63ff
Date: Thu, 19 Mar 2026 12:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773921893
