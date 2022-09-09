Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53B481B
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7693AC433C1
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662728453;
	bh=ICugKxRlvvWM6ldhl5lpMrMh9GAqov8TS9c9nSo3Djw=;
	h=To:Subject:From:Date:From;
	b=HAEgyNk1ecFCtS2Tno0WARbPC9ToB9UhVsAh1j3NSHhpc9v7+EPvC34Xe0znxYakd
	 PoZJ5ao7O961EprlzMuIqVfhuevFKlRxS0zjuGzyUaP8+tOwKzaCu2e5Y/VfHlCkge
	 hQHmTN7ACNd4HyUfqj9Spny/oGb8GgF5quuxv79E1UJXcxnvZUeqGtdupObZoVr43O
	 za9nhLYdAHdxNIS1IxQgLKDO0rpqZaRK/A41PAkpmaG+QsExkKFXxcBI+S8JWj9rdI
	 kd1rYeZGNA3mpHiIeisijpEcLQe3sivCWPD6jhsyGETDtWi9h8AZYLeuUf5eS2T9QY
	 M/hCmNkWMDwvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FCF0ECAAD3
	for <ddprobe@lists.linux.dev>; Fri,  9 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166272845338.29009.12992277298455495745.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 784cdb421b3ccba23e0fc9d0d77a79aa8b96bd671dc4c9eb443b3a151dd85eed
Date: Fri, 09 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662728453
