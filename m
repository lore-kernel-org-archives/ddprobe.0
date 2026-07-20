Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9720A46AECC
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784585914; cv=none; b=gcvfI11p3SXEnhNYt5lF3d59fzqnnpPkB4R48oRwkQRtkx8sfsf2ySnfO8+8WYyWqeBbA+z4K4etgf5IRKKDUJvQoSi2xfTSrhGdkc5Nbln+rtWP6c2R/eRTtyWtq8yUCg5cxAtdwu4n31izLUMm9wUff4b/+6U+yuOGkjTcFtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784585914; c=relaxed/simple;
	bh=ikW30aJqmnvndF+5LtN8SlJrDDPAe8SUopfcl5zpEvA=;
	h=To:Subject:From:Message-Id:Date; b=TFi+pQw9jnhOIEXmBvAyQMd4sJbKZEHFF9L/r3CE/3MFDN/JZE/taw8ZZTd3B7tDE5DDABH8mdPghNZJzpbKUbmPW2dp+S5dqEg+0Cb2wWESVrP0Q5gY4HYizJ0PkJXxSlOgqkhcV7di1f2JcrOoaq1aUR64FLbmlLuQiDHrFkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7X8lLe7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7X8lLe7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 16C3BC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784585914;
	bh=ikW30aJqmnvndF+5LtN8SlJrDDPAe8SUopfcl5zpEvA=;
	h=To:Subject:From:Date:From;
	b=R7X8lLe7w2/YtqYRhTqfBhMJ9CWCOGduWXmiu5kFITS50/jNJRmlw+0qLhY1ntGdZ
	 y8mLmvoA0hbi4ZQohUqkZ7c6tRLmtrQbfkmbxeer5MrfDYU5MLaE3bMHmlCivApbXg
	 7qSA3PKzQNGzHxZzJPNeDTJgLyr5iWzrM2OE+FlaZkHOJJPMcj8J6QjpzrhwAeoh8c
	 awhYxwi4ayaoeDDP8xh80VxvKwR0IpCvCMFbDcePk2njvcY99f/RqXZMqSS9zk7/9c
	 qnz/IHffq7XQHo4JA2iEypFk4Nib473X/+fXRxIXM4ZrpnSzbiWcTTt5DTtUl58/TP
	 GTMlC2Q09vFjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4D9EC44515
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178458591379.15524.2811382746194880246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aec186aee9940e1976e26e610035422503ced2e18fc589d629a01b7bdbb14c86
Date: Mon, 20 Jul 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784585913
