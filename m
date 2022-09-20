Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C326AA54
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75063C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663648253;
	bh=Cl4JtujkS8GHmIvIxO4GSP6BaJVpZFLAXWiVP7oCpx0=;
	h=To:Subject:From:Date:From;
	b=SgVBiqxoYQ4gRMUT30kQIu2yOp9bYKA2ygSuMZ5eKnrWiIB3YkWF0hZkSwYbc7d/X
	 lW0h2s3JV5JozscV1L2STBiDrr6gvqk+DSJ941TJ2umU5OK3CJtquh5cJmXbdVIu+A
	 vUbmtsiD4H94Q+Wa9GRSLdOURCwPXA6vtcTNhIPJJJ36fiNVzmy6TVD+DFsZFpYr79
	 pjmqBVu4vKZt8l89jr/5Dw/P76W/oP+9V0dnZZ/dCZFCE0hHF9I9rV9f0MPjyI2M+o
	 0Tw5W0Sl2FdV9NEQDwDtGWYdLpDZvCnntQ3oU0X7F4M9AckMb67uZkbtzjbsu9uPc2
	 dicT0ccbjLVUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D3CAC54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 04:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166364825337.24030.2767581871692682519.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fcd67160a8270ed50d078938da48782080678cd943e77760d18e05d0e09141
Date: Tue, 20 Sep 2022 04:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663648253
