Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3C879E0
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7F87C433EF
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681596305;
	bh=pPHv4oF9+i7TuVh7EJtXe7Px/TlzLZQpwObEMa/LfaQ=;
	h=To:Subject:From:Date:From;
	b=Jg8fMp+z5u4uRSXuhH7b4Mw3SFSmIU36Vd5MzV+tvYsoHMasm9Q4pAZy0Z+SscFaQ
	 9a4Xab9pGCSOCNo17i1R/Ppjg92EHxy5c23rz+3srRJysBqiHipveVpZt9GiOssOfL
	 h0xgzgx1Xd2u+Rk99Pz1zpVfNW8pEwWyit9x6BdoEe9tyGNHJg0wmBFOcsyDVKq7dz
	 OOdsZQa6PjpDPHf1WIqhRwy2yJKaGO/S5qLN1hWg/K7mL3vbEuNQOKTOtxvMDMvEpe
	 P5XEUBgzhBQUYebTmEc/MZon3Ra8X8IZ+cS0dp+ca3+41+adOLhZbuaT0cj3xMJVYR
	 Hkr/t6dxEHeRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7BF3C77B73
	for <ddprobe@lists.linux.dev>; Sat, 15 Apr 2023 22:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168159630577.13309.5349727973468706453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76c66162c247d9010ce732dcf1ec67807b6a043760f681b60def9dac2cde3812
Date: Sat, 15 Apr 2023 22:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681596305
