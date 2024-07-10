Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C9AE482C8
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720591583; cv=none; b=Tdc3d9NRUOeYWhEeVfTWpx0PkHJFGpWLrVwbt3i7s4/EI84R9tMQ1ffPS9ojen4zjJ2CoGH/G8WyvQ6uKPFbDEOQ41PBqC2sBmS4xa9bkJwU7xIDLX64ptOxRKcI/OPph1lCXHNwmEkwobsu1Dqj3PQAl8d2IE8jq0wJYvVEVoc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720591583; c=relaxed/simple;
	bh=RkMqJiQoZz4NNcrmUd1NSC07KWbIYTvAf+YSZVLZv1A=;
	h=To:Subject:From:Message-Id:Date; b=F95hQRlSUTNjFP5972FsGRf5K4cidQwC/T4mKAf9peipHMV2vOV/Ts8rN4JwsSEDnCqWCXEpxX4xHJPzrXGb/MH4DzJGEImRo31fLEOR3vBNY9FPLDLwEnhGIYNKSya8yPvsDKXct9tEP4lJTg8Lk8vsAiQz3sF/Eoc1lSPLna4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcobMVIP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcobMVIP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0839AC32786
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720591583;
	bh=RkMqJiQoZz4NNcrmUd1NSC07KWbIYTvAf+YSZVLZv1A=;
	h=To:Subject:From:Date:From;
	b=lcobMVIPMVXdxMCo99wADvKHAjzMvtB8NMEoW5yLrcJqo0IER1UWSwwzjsMZ9p+8n
	 /A9EdfxXW0QmMksDN99HNfV8HwSrqTd+GPIO763eeFaJqFy5DsScgu3vCyYZGrK2aF
	 5qEGVKoabz7PK+D1ZRpS8LPpFgVdHL7ZwkroLXVTf5SPuQ+Vt9CEp3a+Zoarf2SlCe
	 5yNIv/Wd2zsxR96pLG5ZjnULU1bpoi3o6g1aIRhyDFulz8tyu5dPE1Sf8iiMEFbjbU
	 Mpa8ACcF3vvW80a9eh+rIjEmBejTwpxImfCaL3xrsSUq9Ntd8qAJkG7pA6c5eCEMpw
	 Rgl8BZOuuMcxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE802C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059158286.20651.17075570747549963916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbbea796e9547e030f200e044b9ab27b0bfae6116565826a3d92987613c8bee
Date: Wed, 10 Jul 2024 06:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720591582
