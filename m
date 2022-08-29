Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB41653A4
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A971C433C1
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661787052;
	bh=QUxRrRYepNxraz9UKBLic3QMaAY5EK/ZphXp1X8ekZ4=;
	h=To:Subject:From:Date:From;
	b=a7q2H2Jpq8HwH/dm6RWHpbpPkY/aN4hy48bgDwX9GslbXsLkVrNk3gEvGeFTUy76N
	 rw4BhO74/zt4vOZHStj/vSn11YVszKvvbO52oo6IwHDG2Ikx7kgKKm/iM2+HMtvwyK
	 MbASxMetuFL3r1L/EyWASfl2WExGnN3WsSwGHpuZBuhQOWue1zu72/eV9AO+rWzSZp
	 R61q7dzIP6HlUC4cKi1CFeg2d9pBkBw3KxBNTqZ8KGxnEc01bUJ95nxJQxbENfU3Id
	 uv0EPVDTJxdf6jy2HTBuVztK4f0c5NX0GuhZp5K6+OXEdDMKwVWA6vSykqO2vTJBa+
	 QNTr/3PUxodFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4FCC9ECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 15:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178705231.32616.1596474939410935240.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07df69bea52a6044a0002d088f631c7ef8ac71569fd655e3b7854535ffa98c5b
Date: Mon, 29 Aug 2022 15:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661787052
