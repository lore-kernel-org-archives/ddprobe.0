Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D03CD2579
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 826FEC433EF
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670924487;
	bh=dpbG6AN2pS/QeusthZ/rx6ncw/B2PCutCzRGgv3cZvg=;
	h=To:Subject:From:Date:From;
	b=hFnBAeRmrx65V73zssW9kUBuZ9FqSwXd2T1gniKpJn1fMGvUeiceH1oopGj4fHuwj
	 nH8gRPeBZ9ibTudhTcsKyyaYf14S5R59v1y5n5xWEdpzyomGSdSkrNIXADGHzw8lh9
	 PTq8+c+dpjeURU3N9eGJrJhFl1WKYx1gXc+UQgdXPt7LaHkWavbud7Wq8fbZ5jjnaS
	 QseKHKI4AvHovCHUb1olJJOXSwesckevGxQs5b/umHZK/yzZzrESE0xRBmKTsdiP3f
	 O2SfvQRJ5VglSxyZOYKfgrsFDqxkPpmSEKVK3IoYj7n+0/Q1NWUq+BppIXRlNjLPYu
	 l+NCh7ZMDrAuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6970DC4332F
	for <ddprobe@lists.linux.dev>; Tue, 13 Dec 2022 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167092448742.18551.7933148718115581420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eaeaff0c3a576691d440d136fe1a4e4f3683edc089927908ca985c7b24dde8fc
Date: Tue, 13 Dec 2022 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670924487
