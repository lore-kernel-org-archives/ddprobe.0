Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4A9F3214
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 13:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76418C433C1
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 13:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661692852;
	bh=XfG5uETmy2wwIH2jSCsbr7ciRyKTQAwmopVvYzeTdGk=;
	h=To:Subject:From:Date:From;
	b=L1cLwhOGRmHhxzlsdHnO1LGNDoE19+RLBfpWH/pycHGMqJanzJXKpCMTpiDHiNx2g
	 6y/VmeKKMV1Ef5gAtNZk8Z8H7d6e7AXpurQvGUxsweYUW55cmdnTg9d0l/CPepBiIF
	 PtYH6WuxWWL/ZbUylSOzI+AwEppf2y+YqR7D2s7ZFDdpGDwyJDrAkWgIo8pzsMVdAd
	 iRYxUVqM8orm7BcrBcoA6CeceNIcLijCi0CWdLGhoBZlru1qQaTPEorJtMhHwSeGPb
	 0TWAtO+opMF6pAm4TRizRVjyJEgiEYZt8sW1NE7KAWBl6wRa+088NTrtCUWxgakde8
	 nrfZKmqfZYLEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5B03EECAAD2
	for <ddprobe@lists.linux.dev>; Sun, 28 Aug 2022 13:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166169285232.7666.1532727930546298943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 442de7b6c263c3e7c8dbe1f3537dcb53e3f09ebc8d01b05c4bc0dae4c992a94f
Date: Sun, 28 Aug 2022 13:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661692852
