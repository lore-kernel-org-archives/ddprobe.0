Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FAD9DF71
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719807863; cv=none; b=Lfyf5K8tet0aW6Uvyjl9W0fSKSuS+yZj6KS06iRQrE0RNjDOEw8ERHZ8enb64nzV3LNqNpUXXHnJIAZDJ4Vs4fqHQk36d/i6OSHyboydguD2senbEzJbMFL7Bjuqvmvx+u45/MAAgSPdZWo4VXXqkid75Se60iECVByMqRFduW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719807863; c=relaxed/simple;
	bh=Bjur4TVuZgTxgJEKymxf9xBSVKTTUJgIP1khfSJ0vY4=;
	h=To:Subject:From:Message-Id:Date; b=HLxAoC6YleFmoKMEXf+z7B7GCLWHBUKYPQcfXptoWTNgJ1fGPLPtQ8y77StKVbISIuVSXW8w9GWVWrvI1fMUi9nJUktzg0aC8SRXd6AMpCkMmWO/njx00kUjARIu8uOgCJqzwcWxqIKOn4Q1u7LjmePt/w5gc/VaZ0eqBJW+V9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o/xQ5TwS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o/xQ5TwS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6135C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719807862;
	bh=Bjur4TVuZgTxgJEKymxf9xBSVKTTUJgIP1khfSJ0vY4=;
	h=To:Subject:From:Date:From;
	b=o/xQ5TwSGUT946vnn1K2xDXsYcwvp0acZvRltr5hNNpA4I1uGywf3Cp7mT1C6Dlbh
	 xq6/n3aMsRbI7Jaoz+xnzYpxcLigt7aIC+0KfBJhTr1LqgZrlKLuJwMHRNvI+VI7+E
	 8KwEd63CaRKDmgFVMCBugoTVm2YenCruNwnnR/LKM/WYL8UW4aHvumqpjPMztS4PRK
	 /y754EMo3YARZGOFZluI7Zlt64ptKBXuEbrdYlL6WRLjgpWnwslQHhXji1YAch1my8
	 EooSBSfNzDaMIF0UTbWm4tJ0PueNzv21MVqOFaidWxFdyZDFIk1yzNzdEwXtS9Y5bq
	 fkWQWb0WxQY8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FEEC2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 04:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980786278.22724.11400524321066220548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2bd605de32475bb3121b40734e41959da512fc0d0098a2184bfe15e422431f2
Date: Mon, 01 Jul 2024 04:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719807862
