Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F451D27E
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994463; cv=none; b=PsUzSjU5oW6XLjcmCGD66Kp3Q1r57TMBDrqpEwIzmTVcA8LIEing+mXoFWdVqrbqmWxqIhUvVIF7J41CcZdkdaQ/jFczLL+It8XSVYIcHacLtCU/2MTvQjvhpS656D99s8kr0xfeuoyOJAO1dyn72gt87KgCJ2l5+uXVn8NawK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994463; c=relaxed/simple;
	bh=8NN3yVg2p2lRJXM6cs6LPGjt0yvcMbCyLVCqTQO85Kc=;
	h=To:Subject:From:Message-Id:Date; b=fCqCV7iEbz/+0BO8+Pd6dZIwVE2D2hbFcdV1VDFENVFej3UiD/2qU7DgpdztBNYa3gxHNJ7hooH+1LxNU78QLyVeaw5lHd0xbDSIgF4AOTdEjUymAXSqEi5o/Q8IiVJVwbY3HWHkIvwsuJqEZ7cKSarrAbsCK2pTvxg/fYk8FyY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4cJVyrH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4cJVyrH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38E5C113CC
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716994462;
	bh=8NN3yVg2p2lRJXM6cs6LPGjt0yvcMbCyLVCqTQO85Kc=;
	h=To:Subject:From:Date:From;
	b=Y4cJVyrH251act7cceFo6BlvrgC1k3y3YpMHk47bwjKcsjfPllbHI/ZsCQmRVfVpe
	 19ru8fQSWppclpWkBORqZG+VShDHO8SBgLpGkvaIdzaiXBcgH6yK3BKmuV7RWud+g7
	 FbwFbEE52nTFEgI8GKjbLD7svRQEkNq8/2aHoi8qrrp5F1uN/UumDmRfJcMxYEBljB
	 imBl0fBOi1HczlFdJIhd0Rm5KMyx4iQqpa77OQTxF/dKPU94bHhUyHD0feSRJHUp8P
	 URxvYL+Yn8V3TpyJYC9e0dTF0e0KYlW54fr0RLvJC8NkcWV/VOXDVEoisQ0ic1ZMzP
	 mHTbCQDctUnDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE3CDC27C43
	for <ddprobe@lists.linux.dev>; Wed, 29 May 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171699446277.6546.8547390766283981604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94a973ae12126884a9ee11b52c283e41c7c1738a75436216379571cae0a3f6c3
Date: Wed, 29 May 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716994462
