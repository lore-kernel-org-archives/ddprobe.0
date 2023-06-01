Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D7E810FA
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:46:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DB6C433D2
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:46:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685659565;
	bh=/GFKdRWU++Wbv5MdAWVDfhcxzkeaq/7y894B2PCEAbU=;
	h=To:Subject:From:Date:From;
	b=JbfgryCuJnhjpLqBvHXi5pMdjZ+iyuhkoMTW/bOuqdF/Fbx89Hf3YseOcn4ayGvH6
	 0KNww/38EoqQKQ8cA1PQjQnKT3DpHHezBEqUdvQLSPKzgnqm+aylWZz996llzBdgG+
	 JDD49qY335Aaxq9b54xlpGxGe3oqgQE1Vss3TBHkYyGUb7Ay6AEzUUd5gTkMhrRfmD
	 AD45a5mYuDu29WKka0cYSoO/Bg3d73AOXRuhSY2NTdT+DGd5pVEq50IzsoGARRJBN0
	 3E87djveafXuzLBB+2xjJrBYBMrIp+T3N6Zz4B9HpWKKF3yMjeSknxq+K6L0Bs0xLk
	 xzO4Y32MhVTYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C82BEC7EE29
	for <ddprobe@lists.linux.dev>; Thu,  1 Jun 2023 22:46:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168565956580.24871.11988860746783008362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a64e5ee604c32e2f98ff4aa41a1cd52ecb1bda88ad877ee181155e1e76dd625
Date: Thu, 01 Jun 2023 22:46:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685659565
