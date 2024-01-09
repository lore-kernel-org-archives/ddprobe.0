Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 085D68F40
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 05:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVMqkNPb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89052C433C7
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 05:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704778696;
	bh=Vk5/O4hFAS8TLEIVE7To8Hgp/OqZD+SHZmyl3WoPALM=;
	h=To:Subject:From:Date:From;
	b=bVMqkNPbnGk2PDuF6KxkNEhPNfVTS4FruyO472NqA5LIQOXTBuZ6KPm4v2bw1vSkJ
	 nwwPzmY1ez/gZqjbxhGlIaoo1QG92XWRNlQgaxJmKvwvXSXIfBk4u64WBwfnLSGgLM
	 TuIXBB3eK1ffebzuHFE4g6Yid/dHpPmGR0E/JZJndIgR3vm18n39E5CM4JVNRmlib4
	 U8SlQKvBiQlK98m69Tm62yeUNpwLmlK8mPo7FRF3H3BxSowWzeMnYly7+YdHYfUkE3
	 NVk17C8WtQ1RC3g3TswXjhPaF00odRiNh5vRoAgNu4PcH3CPxMWzeB4zVF26ivdCzN
	 gBW5xBhUBXImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A7BDC46CD2
	for <ddprobe@lists.linux.dev>; Tue,  9 Jan 2024 05:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170477869641.2612.9214958108027066692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af5ebb22576ecf02ede9f555eb58aaae129fe7d3078d5f3737615b994ee80586
Date: Tue, 09 Jan 2024 05:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704778696
