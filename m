Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6AB5247
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 03:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PooNUghW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D45FC433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 03:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703131096;
	bh=xy2+BqGufBBPfEyzW0hKNIqe7bJVJWrpdcIPN0bCH7o=;
	h=To:Subject:From:Date:From;
	b=PooNUghWWW1HRHvNoZeM0xxaYF0lyoGPgiO+MK9Vva+VL3bpJYNBO9Z12kF1Wm5Cm
	 8GDAenKYNixCVc67Brhxhxb4+HklsGuQf/Qei7TbR8X64P47R5+8ZRWNhl1tF4ZeAm
	 Si1L/knAUO2QlOnNnPsuwxYDm419ETEHGpXWOQW33Ah9eyDQEeH12pv3/Skt/OYsqE
	 qZ3ScBa74E9Q29H+k5eRntQHf/O0FnfWyyPaToKBudMT0wKXtict/fwFNhzLPNREpU
	 bY09IDXxyR5nstj+GGl0CcLnODLMfYfztR5qzH++76jgJ72f0tUCjBm5XRgNVsozrk
	 0/urjp+PmPsQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F89AC35274
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 03:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170313109638.1447.5095549073227748071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 046db091419cce1295916a70e62e08781f7b43fc95cb921a669041cefa05ebfe
Date: Thu, 21 Dec 2023 03:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703131096
