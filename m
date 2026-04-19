Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2609A2F84F
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776618454; cv=none; b=kGcfMuH+JTeYGg2TxTVafqprOnsGiSlJHT2Kn8WqOmGSABbxX5peAJHceWlyX8R5ooJOJwXKrYJXVmB+KFiYctPWFgJomHwMI5Y1IAFeo6kxQtRLpeqPb10yPEgvXTo0CRXOLYYt3NnfPOTYqjUgfj4ie/U94T0FFeiBqzpUqTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776618454; c=relaxed/simple;
	bh=IbcxYkWlrLOaFR6YSb/bucxBJ57ygqhQ8KGRfqQNndo=;
	h=To:Subject:From:Message-Id:Date; b=c2GIEq2GvE6B9BS2z0Xa24StequAFdmmwu9mwFUaIK7RYRehEhbqNS37aPKjkD3XZLXBvJU48mgNvxOh8+COq7T/VdCOBmlDQYS1d0Qth9TvZOj5lu7Ma18AkmOyGT86wAg7Ms61lXaHuzaBsHmvtmBq/iwug0+NAOHZJoJ5kR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=End1oBN7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="End1oBN7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE035C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776618453;
	bh=IbcxYkWlrLOaFR6YSb/bucxBJ57ygqhQ8KGRfqQNndo=;
	h=To:Subject:From:Date:From;
	b=End1oBN7Cxtb62YNSknjyqsgsEmhrNB4g2s29zMWMkAuD74zpBj6u6SaCghs5h8WE
	 advU78GeIKVNou6DYAlF2PfKjJwx440iOO8XrtzAhVgMn1gXrP9RA6t5BSxw5QlSEU
	 jbRF8z5slbmrTxiUvNDLTzLWRu1KHH2kR3+WnJ9B5CrfRDfyUzoCBgxajKbad5cL70
	 fF+cmolXZ5so8ZtUI6l3fM7xLElJcebXfPP4PnbKJHYVLciMy+qV1/NKfRDvjz4IWR
	 bWj3OSb1Kj+A73OIkF1fczefU3QcuxqjHqFM5TlW4HMWg8Vi6tYWXnqrkb6c0h+UbC
	 JBfUnRvJ2KDiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFEDDEA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 17:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177661845368.2560.15381640785537525975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad35a9201878b360701f378e5442090774e97a141d28ca62e3a4a55720265d07
Date: Sun, 19 Apr 2026 17:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776618453
