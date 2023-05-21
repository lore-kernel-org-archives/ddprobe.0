Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313DEA29
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 10:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0E7C433EF
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 10:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684665125;
	bh=glcSm7fNOF2Pc+3DghsHxjebOkACGXqub2qDixoSWac=;
	h=To:Subject:From:Date:From;
	b=XSCmdZ6omG3H/oIv+P5SbrrVTKuMLunt7JkggBD7MMoXQCo2Fkx2DzfwXUx3unU3K
	 ntyKydV4I19RTmbaTyNa8nPe7f71ohPCUu9upGpJhK1FQ74S3pfilrfaBUjoAEZnr+
	 ZEBxP+NTS3OW4inHYQIL2Jw2uBe9pTtIcvlCfRXwSmDUJb8H0zNnXUHiH2atGkR3Tq
	 tv62WKyAdhevHfEu1cK68ts8Vvzm3qzHF9D9ZgXCZxDwCxyk19XRXpFiWIBAhbOduM
	 aWhKSXclX9kVGAfX+vyL76LHuX9bst4JHBqyWZz7NrrxyftqLRLvDPorEG3R365XVT
	 vn4nmytgIRBJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD040C77B73
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 10:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168466512576.17323.3785784430955577027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec3d7d437c9d08635d4498be1dd9dd9fd2311a147b4fbb1494be6094dc11283c
Date: Sun, 21 May 2023 10:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684665125
