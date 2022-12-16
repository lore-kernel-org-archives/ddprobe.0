Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2550371
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8765BC433D2
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671171687;
	bh=vRmDlJLvuCL2Qy2YZq+vjVBQmSkZG64Ff8dXnsSLhEU=;
	h=To:Subject:From:Date:From;
	b=OBu2+E6Afi7jFh/+EbHCVCpEWOved98ANLcx/ZS3/EiNx2lQtdSpDChx51le2gxNf
	 qDnhblBaGnJIP81frkfkh/cBBlfUZEukYAMJTkO5aPKkZtYFvByE+Jg7zW5fNliMSq
	 QMRZm2NNElUrPPUFauYrJx2MlBdZnB/QX7l0ITiiMo/Go8CHrNOQyx5BiA+617w1X2
	 iNPaiGJUASpjA8Yd+yFIa4w/T28n/TtovRv7MMmsy5Fwhqbdz0W/Q8vWN9VqS1kx2o
	 9LfKxTyemHiKaKeCc0xysZ5dS2Nc5xvFunqUoJv9LxWl2DCafTScXmQBRtuKRUk6GJ
	 J8yDtmQrQOt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67582C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167117168740.11176.17895935535074826916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b1645ba103fd3d3dc9bed640fd0f3ad1e58ecf07383a9c6ee3180fb9b8db56e
Date: Fri, 16 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671171687
