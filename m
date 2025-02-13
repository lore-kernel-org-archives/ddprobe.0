Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363DE20103A
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739441935; cv=none; b=S9onGHMBg0rNGydHsX1SN7ymwk2umGXW3mxpMNEwjuG6IIX+Lf75wWq4jnlL/zzcz94KAj5zQWCZOMm6LgMtztWK9Ow8Z7HzIV1HrjfeghnYnzq6wZ1S4Rx+NipYdE9Fb1pBtQU5PGq7CSPAqpmhRYfg5eW3xuAxVMr5J/1TQaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739441935; c=relaxed/simple;
	bh=gL4PiFK5ciGgI7FpFKoCGbJtZ4+9T+Bwa0FKggg1CnQ=;
	h=To:Subject:From:Message-Id:Date; b=Djlg+zKLjcGFZ5lMTl6nB+p/P61d1pVPQ7T7bDI6kGvOc/mlGavMkPpQs+oKBzGceqp6lNNTIYf4rRxn2wF3LMTjb8HZUXWKKQuNbeaO2BPEyKBaAfXrJd8PE7lDgOtqFCGeSmpM9wj1yEXlaxx7sdJZKEJlv7hzhQTBkJwNY3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVIBGwQs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVIBGwQs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FB9C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739441933;
	bh=gL4PiFK5ciGgI7FpFKoCGbJtZ4+9T+Bwa0FKggg1CnQ=;
	h=To:Subject:From:Date:From;
	b=AVIBGwQsiNhWY40YocUiKwsgeDt5Cj6NvbrAHKRCJw+mrrPrT2KrqZGHwExCgPVsR
	 jsbMyWahCyrFz7lAoXVHV/dyjSptFBtObmnaHnxk7xGoZgHTDhKV2eF1vVR/sFe6QW
	 qVIXZAIRqCAJSTp5yRcQ7a9GPfoNsN5B5AONyBs3kESdEqoWCsyK5gBOYdcd7NTVp1
	 Ldxa9jGENUQGWU40M7zHcApof1bk2CM/SP5tWqbQqw3MDEhLUlNeDNxiur/YFIOmnm
	 Gfm6qxZrt8LNsDgCp+u93U1O9o+pSTXv4ZD04a18a8vBPvxy+SdCYbYL+lN/dVXWZI
	 l7utwZ59z9A8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96867C021A0
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 10:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173944193360.18226.13420546999501754692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a77b8875669f1d8cf86c23718bdd909d5ade81240346969cfc467bb8ff1b07
Date: Thu, 13 Feb 2025 10:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739441933
