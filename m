Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277B32EC0B0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764578574; cv=none; b=L23L9qz05KU9Ao85btlV4uefZmtm+bTl9aZl2fVZBT55tEj49jcOE5SAIq8nmbZ++NIFHodOpneBo8fdhALuoGv1x/xvVGbEyOw8B6FHlSiYW4AYxcwyqzhPVs9E3ADaDDcKlfZRJ1o9sazI/PcHfMBWtZJF7oYzF6wZQnu2Jys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764578574; c=relaxed/simple;
	bh=55qSwg3Fybgx8WYfv9FGhgkQP8X+FZAf3D/F1mTAt3M=;
	h=To:Subject:From:Message-Id:Date; b=oo2AkrQOxn7T43nWXkvrxMMVup8tBy7b4cOHHjz6jqcijlB1Cq6xClZ9DXLvcj5zEb74B5GZ+04VqyvAVycqwtsSXWjaJn7MDurV6hzPQaTG56kRHwzprw0lNEcfBB5q0SNYXI9GZLt5tAskrJdre74J+7BoOZtxALcweJwy8yE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDmVpg91; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDmVpg91"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2ECC113D0
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764578573;
	bh=55qSwg3Fybgx8WYfv9FGhgkQP8X+FZAf3D/F1mTAt3M=;
	h=To:Subject:From:Date:From;
	b=EDmVpg91pNDsyhSB32w/tKkBqWD1CIjC26/MA9KqcJvomz/bqvDXLXSNoBYT/L2Eb
	 T+m6EsTAHiIe/KI4UDKf5I7/PV0FTABXVUk/pylTvPvjkeQiNVCr5WnxmB8U9GhHO0
	 3q34uKZVkv71tNsVfbmBwLxePoOuE8T4bVSRglC7H8gMoEt/AtqrrS4TWYB3HURSR4
	 qgjwNYR9nysH52xXLz6q8sZSGpzmdian9xq+qpBHx1r5l8O7XOC3K3TpA9cblvbP+5
	 YLaknE32MTS0qWjp57w4vtZisMLUj7tXm8QRNSf9PKY2ZL0K+6yL06ZjTDDvv7bFnj
	 McnQ0Z/FN+BlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 981E4D116F1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176457857361.16942.17973073272644335136.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c39c75893d970f4f3818dc6ff4f4ed984810fce66527f90461566239964f627c
Date: Mon, 01 Dec 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764578573
