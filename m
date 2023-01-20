Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5F917C9
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEC93C433D2
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674197525;
	bh=J9aJw5EC9cgmQr0+5mfeCTLPEh5HM/4bXyLklfsuAtY=;
	h=To:Subject:From:Date:From;
	b=eSpYNwNXZIXqHq9WjMZN8ynGJ/Yp/MQAoSLRQH0UAcY6Y50fm+xiR1sYta7Kx4CPC
	 X7W/i8BHWb9aevhWgyldbH2pbqbD1PQJhn/rwMsmhURME0rbjY9+gRK1nXuNIJba5j
	 1T4jmNVelO75kXimOv1Rx/2iWxPYyEjPjs1Atdmf+tHNnKSkuP5oCC/EKklnoNJTUA
	 sFXu8sHec9P/FByol/azDfmKxtmN2PJ8rkJFST63R+ddq2ERUXWuPfV+HBrCCEcuyr
	 W5/EvGyPMSzuR+dN34GeEsb68ROp9M5MvKkBlJ109dRerzmuB47HCXbtEsmUx9jk3X
	 th7ED7456AGIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E75C25B4E
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419752573.15587.486530167791198124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2d7f94629310854bf0b63b95656e1280a370aec41e05d39139d4769e7ae029
Date: Fri, 20 Jan 2023 06:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674197525
