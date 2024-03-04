Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09ED5134B7
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 09:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709545697; cv=none; b=tl7k5yuRb/xH71yjb0my/ozU0od0bXA4AHNr4YfHQuEySEn+r+04/g61ZxMAME+D6ccrZ9rhaU+A9NjDrVRlL+BmEyIz3jvaBJlWgdik+K1MJ/uJ22AoPlNDL59yYhp2iea0C5BwWYyiWrOTFNRV2C7tvdHInZoxwZtGaOLB8AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709545697; c=relaxed/simple;
	bh=nqtgVOc8Embulh6Uu5f3rdagks/fznvvp7WCxj3cubM=;
	h=To:Subject:From:Message-Id:Date; b=KOSkzQZs3T45yl0w+cbL528QBENJ2f08Itk19/hQja0Le0olthc6Gt/D/gOkjFaeMdpXYnr5DwIE7HMmuOL7DmYw5R1ivKdNqzoLM2wUoUV2/WSVC1/nElb1jY8XCnK70vUatTwyIrtp+q7BuUlX1GtvbJiOvkKOvPp1qqoJJnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tb72lL/O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tb72lL/O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 817B9C43390
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 09:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709545696;
	bh=nqtgVOc8Embulh6Uu5f3rdagks/fznvvp7WCxj3cubM=;
	h=To:Subject:From:Date:From;
	b=Tb72lL/OnSqTC5Lesa2JDFPa8917y4+5EQ6P4THRKmoIpBkQt1eqVDKUNjkM+0ESz
	 BkxInzL3aV7i/Gi7cpuL5lm6USgdorRsyEn/byrflZmF7DbTlYdXBvGta4mKpYOsmA
	 tiZsDvOolGTqjTvbI12xNADhmV2VnUjADgM2epTwDT7y80QT7xccCybYM4PyKw+Jq6
	 9Mphd5+ySVLYJ5nfoDn7IUSdvqgwz3Fc0Og2mK/5Xzthw2OvYJc2+4+hp9v7a5GOSq
	 ZJSK0VVbs+gzrhRMjf4TajbEVtrH7EUpR2U2CQ+jgY0r5tW37Ps4EOxxCj+PHDMuin
	 4RgmIFoIQAuWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3A2C48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 09:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170954569638.22349.8509541529427435231.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80555b2410403add98b7c6beb88af7b3c8abf6936508c9662d23358e0ae39d0d
Date: Mon, 04 Mar 2024 09:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709545696
