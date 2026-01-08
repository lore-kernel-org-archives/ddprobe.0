Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC9131283C
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767896634; cv=none; b=eTuyklqNciprpUXxRnfyMyQFTUibAtjRwKWcTAUPYKJii2nF5gf82+7Ub8/jTnMtqY5omdzfyPuoZqCGiVsh+i+XhFsuSFByMwD5zYqWOMJ4bwSqZbqvNOBhMMt2Wa79eweaUzS4D/YEmzHj9fSoTCJH/0JDLqcHfRVP+JF1ZRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767896634; c=relaxed/simple;
	bh=Pziw9HjSeQS4QrrmvLrn45mQl1ZtLIh7BAohJmC5UxI=;
	h=To:Subject:From:Message-Id:Date; b=plimO78BfLSJNqrkgs1f5ROylmPOT871xE24WGdYfXnJVpLqLjU9BEtIR7cYL4Cza0Cb4m4QO/vxm+zcz6/tC00lbutiMoxydMHi/v12yEIxVn1iYHdy0kLJ5i483p4rPKU0L1/BVy4nw3b5milQdGM65gei7VhJfrzFCnLT9I0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YYVwy9YG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YYVwy9YG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C926C116D0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767896633;
	bh=Pziw9HjSeQS4QrrmvLrn45mQl1ZtLIh7BAohJmC5UxI=;
	h=To:Subject:From:Date:From;
	b=YYVwy9YGKjaaOI3xfsPYOtT0FjZ9akho5wQKOrCgcfslc+0Peldpz4mIy31YaVIel
	 fSL2ee3eE6Ss0nnTLnK4rh3UMNpuUyJQJm5LRJ6H4Nv5T/Z5BWwg/fCdWSoN17PIhW
	 vp8nb0y6Rm85NhWPVDxl5e2IuZryVbe5vVbASLdMfy3RDITqo+ryJCDgUQXYsuoW1d
	 fwDO9MWR8pvACnnKZSmXzrVlXCmD4Xp9sLkpkDM4SIath85HpDKTkBUN7G4+hrYIuA
	 2QJL9ip9jypi/SvHpzewYiWv9C6fsSBP5VLzFbg7TfABWMmhel+eif3utDw8nw0h/s
	 KW3sxt9gtLnGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1D8D1D486
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176789663357.23707.16100257454859837505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b627fa499b742a69672b8b878b7b064799f6f0aa8b33511afe60b53b2248e43d
Date: Thu, 08 Jan 2026 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767896633
