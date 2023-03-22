Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB79184
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:08:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04A8FC433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:08:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679443686;
	bh=2cQ7SST/FNioMqTloagrdqr7HRVMqPMctw6enfEMniw=;
	h=To:Subject:From:Date:From;
	b=MbR6F26h9b7LPqaq6g1D9+7bJNsXY//sbPVLY3ebAmgZ4BvTfT8krjrZpvnGeeuvs
	 DoPqNMG3Tibkl1i2rUxb89A+wupkITCzHPQHMZMc2Mf6WViUpi6Jjm6GhEGaDAHdcx
	 V7Z4UdeSwVuwdq2p8YBLiIJIb1Mvg2157+patEq3DhUSz575xq92CDuaJuQzCHAzN5
	 LrEQb6n6Tpd2D4p8WwFYXGh/kWVs+n/3x7fI01lJD+MO5IMZGKJ/wlNvQG2+PBUc8u
	 p25OvKblTdPhCYvcKn+CHu99M0/TMq3XH22L9kCPzcRfUWN5j9etSBIEAaQs09B6jE
	 JOe+34yQWp0IQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D70ACC6FD20
	for <ddprobe@lists.linux.dev>; Wed, 22 Mar 2023 00:08:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167944368586.12581.16008059018367565925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6be396e14a79a22fdd5d35f8105ae97842c0d7b869c03378401bcbc7ff27ce31
Date: Wed, 22 Mar 2023 00:08:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679443685
