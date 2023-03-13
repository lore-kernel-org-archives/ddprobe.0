Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65CB6184F
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 11441C433EF
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678684626;
	bh=RQMAe7hN86h7KTZ2P4a3FsR4mWFFquE++E1Ipt5d/n8=;
	h=To:Subject:From:Date:From;
	b=RtRcEvD7FCeRipl4FfVbGDnSL43d5tZk6yJCLl+596EsFhc9+uBJ56vNzr2034p86
	 VQCiuaMtxTGVMiv0IlkH94CUs3o0bI93sWF0wMP5HGuU1Z2P3fs7mBb2Cqm/SKVAOe
	 EjdWDS3HE4AN1lvQvFhkzrALDLW/Yku6Zjw4BS2f9cWRfEjXsCIrKdlZKe5Ot6O+TN
	 Bn8JNWsrlaiv/ibW8kfB97Ax7nYD7qnCC8RlR0C8BdDe0vSQk1JdWshzxXT7pnBGCM
	 YAH2Fna+929RVwd0UT3hczt2JBdf9JKo1Gy/uM0wSY46XhCHgymrQoY/cwgFuovwez
	 2OtZq7gY09q/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E3494C61DA4
	for <ddprobe@lists.linux.dev>; Mon, 13 Mar 2023 05:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167868462589.17609.11213875343524201474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 652466913e34f277c459dec984affd97f5730896aadb6e6429552dc5947909cf
Date: Mon, 13 Mar 2023 05:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678684625
