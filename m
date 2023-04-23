Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D3437F8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:21:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05669C433D2
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:21:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682238066;
	bh=SF2BC6MNwMzOIuUoBkfMUiV7ixJQLDPoiCIVHrQarVA=;
	h=To:Subject:From:Date:From;
	b=u7+YBUUnuG1OSio8aBJOlsG3tj3ZWH8gVf6PKEYaoDt+VCAGjVc4hz/KZXg7JwULj
	 O9qrOYhApSMjx5vQZ89cR4Oz9W2qiVj5NWZ2QElBnFCwK3wOBIBChzYiutTJWzosg1
	 swYZzkWm8KkaERqcHbXGyEObgEDamHj+nrgLaFpXlWS1CNu3afFN+4BDJXeJXXIRo7
	 diB+1Enp9IMUgJiCHz2lib78R2SIKHwortTQkcFFvcHy3g1+8wNifX8WQQB3Hx3YNV
	 t9hK9weDP6JX4QqabsTR1JUPu65V+1HjX0Ck446Xnzc7+D9nJZsa90nG7f/OyXXy5j
	 GfUuqG8hLZLtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBB2BC77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:21:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168223806588.7689.275850027547591558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67591f0d75e32ff8c8d2a910e4e9422be43a2850593658482af25f72742ba8a
Date: Sun, 23 Apr 2023 08:21:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682238065
