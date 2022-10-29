Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E73687B
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A6F4C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667076654;
	bh=5YUgVo3T2gexOymyJT2vBi2qqFrUzNWIgBIZyTvgss0=;
	h=To:Subject:From:Date:From;
	b=ebrfQeWuBXzR5qnSadlQYH5i9GQTbM4vJTxAK8FAeX8PggIte8tLFCxltVNeThisq
	 x5cD4mGp3RmZugGvXmPz461UIPuML6Brg8PVG0YJ0FTk95c0WFva0JuwwJtjfbXHzc
	 pIOMndDQwKfHuVztkoe5cNjWSYVeAoqctCTlle+jOQH4VllRzksJ6dR4PRItJbbU9t
	 eQkdC14hPjig//oq9ejtYaMmQyeHNumdgpLdHi/M0Vjzs+7zqIiOasidEkHVlSHpyJ
	 Jyb0miia1nHDMBjIdzIl4BpcA+K3HNGaK3IBfqcTVKecmQo0pJ4P2KdLxWFC6h+OAZ
	 d9rQvnMyjCJ9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E973C433FE
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 20:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166707665434.27623.7002009372311466246.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 013f5894a1e4d1a6c9ae6fc61fd0712c799195a1e53faa74b6cf8fdf6f30b807
Date: Sat, 29 Oct 2022 20:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667076654
