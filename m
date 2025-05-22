Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9FFF7DA73
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747948793; cv=none; b=GEYhGJWOR8EOLtCMAN7V1JdAVlqGoYznON2xsm+ZPNKiTpDZWPpJzn42XOsavAdWdMRrHLTNQ8GHZx57L9hM0DMDs0XkrascHYr65BpG3mayjfq1q4vV8Frp8F95gBz+zXFmXlA5egVFJd0vMCDlAX0cz2ufEOQAgc2wLQokP4w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747948793; c=relaxed/simple;
	bh=UxCq27gwczQhYpv3OWS40xcQAJxzipzLD3tUv1v0INM=;
	h=To:Subject:From:Message-Id:Date; b=YQc/ZGu6X8B+cXwNDigtKLxpnugn5z2eFiEFvH7v7ig6TJoKVcx9e/g8gyDumN+F/AC0EXaAkp3jEr+hVH/HPVpSUL6T5o9tGPxzhKLFc0y8XbKwAtkha3hSuBTvpfu8BYLbuNRuDgyzc4Om3Y09ZDDnMeYbpSMAWFe0MKOR1vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BqpVgCIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BqpVgCIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD57C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747948793;
	bh=UxCq27gwczQhYpv3OWS40xcQAJxzipzLD3tUv1v0INM=;
	h=To:Subject:From:Date:From;
	b=BqpVgCIWWHG8j0jmNo4bkXlM0ywLq9KQ2GKgpvrGwbTpO3k3zI0dFiuhpMT4ijcEA
	 +ItcHHrJEQvp6LMCyngi4oqjLBB57/n4bltAt6YWnOQi0x62EOYMzCkvLiBLJ3Yc/V
	 IwBBRWWXBZ9NvZdS8e+ACzh36LyVQjiqoCm3DWLCttr56eq5xt5LCRxUIxCYNsLmmd
	 IwTFSrJacjIOu4sUWEP5tDShyg4f9z4A8zi9A38ZUDCNiiW+p953zrjC/+zHs2c8r9
	 EWDBdhVyh12z0n3po2RZyILdMOuCz3hHaDIgluXScNkylGIPyDF2g+7JgnQLtzWJrJ
	 zQ9Jxp01DP3Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE27C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174794879357.9852.10892409206738846362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27a4471aabd1cec7820b3be02b22aa65d6e3c33cc4d324efa94315559fad13b0
Date: Thu, 22 May 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747948793
