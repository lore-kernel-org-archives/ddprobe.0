Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83BFE1F5847
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:11:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763583114; cv=none; b=YuwEbZT8gkvxOIRG2ljGXXqSGSyKgpvtvTWb4qcbxWccg2CUaEcbVCyk6Rv/BqpgFvAAeAeH4zUfSKBYhpFcRELfZJBu23e1X0c1pXHw9d6mgQ96InQ84u+82UOzBdL/2o2+xHrPAwi8EtnnlV92Nty+0O0+mszSM+S6RY6R0aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763583114; c=relaxed/simple;
	bh=5rM4kueMVak3sYwGo7z5viDE4IOhF3iAk6d5dDB+2nY=;
	h=To:Subject:From:Message-Id:Date; b=kSw7TpAK7AeS5Bm+Qb7q3nX1boUGwfI77Ipa93wjEx9GoveRI9IIuMsZP8klYg+qgsETJTI/DhAY50NHkkxVMNBBomUBCZuSGZKP7kceLRgr0fVUUo0x0QoedGad9qiXttM8Py+GphtjdRbk13txAVpyzsG59Uzw3m9q8oZJV0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CZxJUr/u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CZxJUr/u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3F4C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763583113;
	bh=5rM4kueMVak3sYwGo7z5viDE4IOhF3iAk6d5dDB+2nY=;
	h=To:Subject:From:Date:From;
	b=CZxJUr/uqwQ6Zs5SueK3MukakvezvB7b3ESL0tY3eAVKzcvkNA/aahSCdO/eUO0SA
	 HDjRS2VtNI15v0uBkuz4QPhIffVNqfO55enjEzEPsMhSlcz+XaTbJHVs6tDnYI4gBI
	 CmTlRo4hekVqHTomohu/vkFClg7H3jdJnCSRKHB1ishkquSV3KwydPZVvpV2RDn3Mp
	 zMohHQAQdhEzHNF4X+PZEq9UAyaeFuUlcQ3SKvq/+qcJ85bBqWTVeWuPIKIz825ybb
	 NxgYerrfE1QZGryYPpe/ZqK6qSK80lWqd4uc0fqJsVFnOm24FJvxNOPc5V/+o/97sT
	 eR4ZuvQBd+2Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A942CF58DE
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 20:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176358311361.27679.2137046651759751249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06c7da068aeec96262b5b0583fca18af52807593557f48b7fa424c02b91646d7
Date: Wed, 19 Nov 2025 20:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763583113
