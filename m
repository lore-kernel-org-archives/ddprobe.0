Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C2410F0
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FADC433C1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662099653;
	bh=CAubbJGLuZAxzktmZj4Tjol00UBpASzpRoJC2l0bRC0=;
	h=To:Subject:From:Date:From;
	b=getTpYCqCNlIqNJY0BGq9FSmYucVps+YZLqxtZBSFjYGyr7n7eSvXwbDXauARbscM
	 wJXRv/PWtnwp1yZxQ0SlB8YqUUpXdAH1htY4bTIVvugHxosNAZzmh33Si/3i2T9kTj
	 g5E/6bFRmQ3vqognofT+RcJZut2DDAAdlIWBDZuMPBdMNIfA4z4YfQ9Y1ko76XAirC
	 kAVuYsqgTtBCYx0mxsWcyO1K3n0f6/EjTocFZ6eV9a040yZUT1Zp/5yKgO67B7PRkb
	 AtEh6ZVdUSeGO8edTQSr56VfFNY+O2JZbZooewRKi/BJYRYS2YHLofuNCA6kyBsJxV
	 cD3ovEXCjuYHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53BACECAAA1
	for <ddprobe@lists.linux.dev>; Fri,  2 Sep 2022 06:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166209965333.13301.16453141165004062139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d133bb290fa8e5f133f738c7c91e8eb3d50bfa8e5138d8fa5343d77a7fb27c7
Date: Fri, 02 Sep 2022 06:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662099653
