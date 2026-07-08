Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BAAD1A682C
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783474114; cv=none; b=Z+2ezkZJNAVpC2VwTRpqnWI5NcTcWtUt/b6PPfySg5c4g6frU9cYj/kIYcp9z4g/wF6+h5Gn0UWYw85AbpIPjse2wzDjy2+MIN3LiGyLmibEH1KkXYhy4kotyS3vrcf+dM4XWW97+LI1hWbc+9KsI600O38N/q5au/IRLXCHaZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783474114; c=relaxed/simple;
	bh=zqXA3PXwp2ph3zPtL/UtKesEqIFiYOPHLaj3rUJPUgU=;
	h=To:Subject:From:Message-Id:Date; b=B7LuH1KBTbA4Y0uCb5BGRKcP836fhwYBNzYVAbSXwu+meg0XINZJMkMdPQgU13Vl8sPpjs7Zc2aR59uwUoLFwIhEnrwwlPkL2Cd/r39qR0o+oKAxy/4+n3UFg+6OMCvvPKvwYo/nT/Bnt1QyS1ju0Ov4CxZaMFt4W7OeXyc5ybM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ghhDhKFi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ghhDhKFi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D04E1C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783474113;
	bh=zqXA3PXwp2ph3zPtL/UtKesEqIFiYOPHLaj3rUJPUgU=;
	h=To:Subject:From:Date:From;
	b=ghhDhKFiLFpDwXKeERHpdC8d5a/laPsoIxAQ+tntdFLWXgqoZlxB+q2jSD4eM2G0y
	 pE67AT9Z14Ah9YWTar2J46wUn1VmAzNLtGt8hNw9PArNPSQO36CSJUNzCe7Xavr5aN
	 LyIfzeeZkBxGapuB8ppwg8CAmd3Tv2FZokrRLZfPrbGkXg31RF0rSf+NvAy3vyrf1Y
	 Bsd9ljShGo2hSkgUrSH7VktzgYgbWCjdRaqmddQS3PtripEDSlSBUDRaBYAoRY687T
	 9qAWcRXkWgQA40PtAdlnVgvh4xUrPQPPAdsW531QuVq5xn3oNGT+5t3EIvTXXSrBnv
	 r8WbyKCyXSqhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE3FC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 01:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178347411368.22757.319518868504514591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88891576f4f0771dc23211c8c5dc97d253773668178c321871e8c518bf225aed
Date: Wed, 08 Jul 2026 01:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783474113
