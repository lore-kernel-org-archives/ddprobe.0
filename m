Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CA37C
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 08:55:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0DFCC433D2
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 08:55:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676364905;
	bh=Y665PYoGwwJ2XQHF32RapfYDyCS4ertlXSm+/I3BECo=;
	h=To:Subject:From:Date:From;
	b=WHJO2O7kSEN2AT9rwnx/vQlD7DbQrY4D84dASQIfMNeKTF6e+d/cs1M8QoAsmqM6M
	 liWeEE4DdlacHDkN//qehN7NSb31CH2RZhyJp3TRAUbvF7PBXxFMnM4UUsvAH5cRMI
	 hdISMgHmMJuRGPXsCzzWxt8vx18NiqIJiU0EJSD4OZ7VYsDqEwPTDFcLGjoN4dPa+1
	 XcwF4LViZtYGrrfd74FrlbOCyKoeOiEKm2zvqA5ov8JpPs75N1JaJCvg47yn3Lveyc
	 9PHJuDswxiMJeONKmUDTvx1vSrqxpj7Huyp60icf+gcSvpEZTNSnMGt9oPWzTCXsTa
	 03RqqE/ykmWzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C04B5C05027
	for <ddprobe@lists.linux.dev>; Tue, 14 Feb 2023 08:55:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167636490576.9592.8923804527696128870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a085af919d4638a1fa41b014d00ab86a4fa228fe477b31e564b2cf9e84a1b1ea
Date: Tue, 14 Feb 2023 08:55:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676364905
