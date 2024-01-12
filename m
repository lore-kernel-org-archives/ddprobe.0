Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F0C6DCE7
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 14:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tLLVrmzl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827A6C433F1
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 14:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705069696;
	bh=5ogykKD8Vw5PNDagZKMwiMIVK8rkAUU5BQXPhlOob28=;
	h=To:Subject:From:Date:From;
	b=tLLVrmzlXwzJzJevtmE9rvP0lspG7uxw9SjXInkTdfzdNHL6JMlgMoKeYZAA2Lc2L
	 6P0xOyWQGmDCxE5u68Ab9B3b3beMRv+mggcSc7L1dwbNZyMCE/hCtPZ6P5ll1ys+4r
	 /VQVw9jfIKNFgIVCuhq2m0VGPwXlvBJSwKRAxkbx7s70bpI4Z8YbSzHPKfvwDhkOrD
	 qZr3/tFSNbx5OXk689YyUOjv1ew5Vt+h8hMaeO6pTyG4xN7f5Uz33bspa+Kc3GmUgr
	 ztYnfP7EBzWK2pXaOyG51hUFxDjYyeVgTWNqNXpyDcVa3DEmOUi2H+k1yYwZ8TVamn
	 RmzyWO+reMDYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67B5BC4706C
	for <ddprobe@lists.linux.dev>; Fri, 12 Jan 2024 14:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170506969641.9517.5169031975679858827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fb502a2e5605e45f7ef54db1b02c6539066d964b6c110106b34dc4a9f84f3a5
Date: Fri, 12 Jan 2024 14:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705069696
