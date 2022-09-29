Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFF21381
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 767B3C433D6
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664454053;
	bh=3HBp/mR5dHzbihaoxiIfwwe7+1eD45G+OF9ptyIEBao=;
	h=To:Subject:From:Date:From;
	b=svELLN5IPYiHSsYn6c/ybbEjSBvouL2oZ2059nxqg5czdq6vsVDtMo3eENISepYNo
	 q5GJ6Vxj0mHt9nglm3k+Uuc/uLj/iC4BlOl7SrzWR4hjDQVmpPvUQCwUhAfL2JGiRA
	 9vg2EbBj3DLIPghsvdvOa/nBmT9nXJFzWF7R+QuhwCedrb2jmh++dmllu4bb/O8uYF
	 XcYSwfbgz8UU/Oh2kMfFXCkyZl5YjX3GGZQOceUN4UM94rNNoLgBbeUigrXmCReKd7
	 D4e4xiRbIWusCIMhvfS38JfP4bJQWFwfU5IcyZKLB/KF81jicGqpVRh55r6UTLN6fG
	 RVGgAsvY9m0KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59989C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 12:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166445405335.26723.18039049928221501497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7eba6d7ff8823ee8949f3695dda3e17f6bf0e3ecdc0e26a743a4f193610fc5
Date: Thu, 29 Sep 2022 12:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664454053
