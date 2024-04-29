Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCEB6ABA
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714356743; cv=none; b=IOoWsw2YuN/ZI+KfkbIK4AGsEpUlGBGgI+ot9+6SyQPXWLaobCUjOlcyEdgN5TmmagussPXXZmZsj/zCXs0sf+XRJg3/fcBDzZQV2S+SPAEUHBMEnEG2S6gPj38Cf/ZS50oIMnsIbihQqapJMd1j2SMhsnx83wroocg5Gv2Gmag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714356743; c=relaxed/simple;
	bh=5GFE+e8CgKZ7t8L0ZN+iiObujz6ZRQVrRzk9JCJo9yM=;
	h=To:Subject:From:Message-Id:Date; b=t3cRSD+8ZZ3Pv2KvIu2RaKzunFw6owTE3jwUL5CkjprXd1REizFEFl39oUO1fz8H9hxZD1WwuPrA08Wd42dDHTuRvwTiIWNXj6AJVEN2DhulKbWhgBQ9k9c6M1Iwlwlhmtywcrl2nPYsKTadclIEuIyBiMCv8g0G6Ux1w2nVZhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiyTf0Gx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XiyTf0Gx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7581C4AF1C
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714356742;
	bh=5GFE+e8CgKZ7t8L0ZN+iiObujz6ZRQVrRzk9JCJo9yM=;
	h=To:Subject:From:Date:From;
	b=XiyTf0GxOg/OUXbIjmByxH+zSQZvOBks6YSk9biVVELYE6eRyiAgLlBHedMOL9PdF
	 cRthgI/mtzMlWc49cWV0GMA4WW3bvmgDv6ee3IpMpiDTlr5cR71MShsNgBFUBw63Ew
	 R22nf1jsKXOQBynAzJnwLYEtz7cjvh4xbYrvKvr39Ocd9bBFB1LfKJt3hEArVdR+oQ
	 YvjtM7DN7IHvZczv4W5jOTkJScTqoHmP1IIW480YsRLrcUjuLT1yQQ2hZ/4fFpEp8z
	 vFXZJ8YkHPq8nPrwkbrlbiyIjlxMwcXlW2CtXKovStJYi76yPHb77DDwL8ASb2kg5x
	 clC+pcLTBDf5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C00C3C4345F
	for <ddprobe@lists.linux.dev>; Mon, 29 Apr 2024 02:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171435674277.29152.16296717109738631400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb00ef6801b9f6d8853650a289b0867d668bc727f54844cc2434909fb92cdb6b
Date: Mon, 29 Apr 2024 02:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714356742
