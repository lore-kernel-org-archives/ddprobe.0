Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF9DF370
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 742DCC433B5
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665714053;
	bh=EIpW8DFCQlpp142wcRi7mjRrYous3jX8jJy41A7jZWU=;
	h=To:Subject:From:Date:From;
	b=RLinuotc8Bcn1IDV1sILBMDwaaXUf0BVsJ8hpdHKIduVi+fGamN4B/6rIzZtmPnq7
	 Z8GR66PhLgtBWv5sz+iU6sBPzt/7/2hpVZarp/AGzlHgzIFLzYDoAwynuQxb+RdqRJ
	 /Ac7BkBnjt6ywL4KBqbswwjW4+/XQa1koECS1zPskWo/SKpkzPOriMEMKWohLM2DYP
	 yMYMiX2uGj/OAabfmF6V+Bio2GNcmodeDJRqD/Adcxb5DrHOVmc705/8XlEUVt3jiw
	 VecRu8cBCNtEIDqRp7Lnjm9xjfN4nlY/FLQZbGZPftdWC+nNDvd8unZAvL/j9no1jK
	 O6qPhmLDs9nXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 588BAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166571405335.30924.13511912550811944794.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01551a831a790b4632917e3a1fbf74d798afdd3194c79751ef9c45dd9f7de968
Date: Fri, 14 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665714053
