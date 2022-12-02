Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31CB7B
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7308FC433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669962054;
	bh=eMzFiRVrv4IzVgskGw12v6RdaZjj5tzaPfLurN82WYM=;
	h=To:Subject:From:Date:From;
	b=BUdp8Ny4WrvtHr7RQI2BwwxfeOefMNKPJlpPUrerQ9ARrffSCoXuZm6OhVua5XhCd
	 IRM3Ub0P1vt+egs4UR6CsJpK1pWaO64v6atCuHq4VEoZefnrB7EiN/T9U+NvBOeYhL
	 0loZ+HU5Ay9Tgw5pH5myW+f6o5Xre4UoBMIWEGiJc8KorG4sOMbmh7cz1ajJPvzoOi
	 qVDVk104OW9MbfF+0uSZYycHbjKJvPl6KSRZon2Rmqg3K2Itdn8+WCZDIHXhY8rJuF
	 Y2UAQ5BW8ekybw+04W+7UMiVW2arMuruHDN2f+ery7qPR94p1Noi7ClQaa72fMBL7z
	 9bdJRvqrTA5Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57BE4C4708E
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 06:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166996205435.23611.8231852702712576601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5e820a9a3236fca28a4c7eb84ae73402f8262dd27e328bfd87671cc3f036f06
Date: Fri, 02 Dec 2022 06:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669962054
