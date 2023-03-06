Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AB17E
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 01:07:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B74C433D2
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 01:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678064825;
	bh=8LXX/EBj3EukujbIKiA2HGfIHoe38nUJREeoShbnzsc=;
	h=To:Subject:From:Date:From;
	b=PxBOoT/9R0+MCgBzzX+WgquPY/dfLNjd5P5lNbcdPYpMxZV+x4VLO7mbbEbVfG2yR
	 jveIUy89h8LQezo6+N58x06kVzILD92O3xWFU0Ixm10KZNCpksexhCkZIxw34LBVUX
	 j2y384x1bwS1E56BaCYFj5/00bVx0fZEFWaXdduUAcOAno5NXBuf0yIeW54ObY9JEO
	 BysOJRQFX8il6eTFopZtOR65etBWN3u8x3u4RqrlC6b0B/0TpqSyyir7wOnEXLb+X4
	 JtKlqhoRwlf56P1Vo8byU9jcQNZ0I+l+mQ/F58VUjAYwsYmRTmxP2dCVPhWrUD9FrV
	 /LRiDPfuDpWsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDFE5C61DA4
	for <ddprobe@lists.linux.dev>; Mon,  6 Mar 2023 01:07:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167806482576.4556.15766138962982155393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ee731cb2877eaba29c2274656ae75e6d4c612ce2fd2b0e7d5fc818d1ea82f20
Date: Mon, 06 Mar 2023 01:07:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678064825
