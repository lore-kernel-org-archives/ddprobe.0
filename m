Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFA112F59
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77149C433C1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663357853;
	bh=mU8OIyZpHLTCxaLc4hZsxQ1KiC5G46KQ+dytPpxLums=;
	h=To:Subject:From:Date:From;
	b=KEjN2czkTUcmqFCgiA1Wu2Ufg8nel4a/INF9+oe6PJIvkdKMjdq9vCGGYxSfzKquj
	 vSQHFNMikhXkcYmWkihVmTThCpLedezsucECkLVKAWJZj5DAy3qKtOQQaR7It7BgfZ
	 HziT8bOmwmHDf7UziYO6kjfxSYpOao0H2+UDFUOeXtPJPX7epyAA4i1FKoZqcyIzng
	 ibuL6h4t0y14uylrx2cwGwu2p4PchFIzl8z1+g1JZypv/+efSJ41an9NM89llWyzQn
	 0HGDhbYIbVHBMTdcdX/OhZxz1WmYLapfr7SC8LThfqeF/rva21XSdX/FC8feCEslwY
	 TYswVRvCRIcdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58061ECAAA1
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 19:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166335785332.26575.17511326450878318285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db03f303fc9ba12d31a1462eb5df1595aaa62e08f3849435fb31801542273afb
Date: Fri, 16 Sep 2022 19:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663357853
