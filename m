Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8F2653A8
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 00:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC2FC433D6
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 00:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669248054;
	bh=HiIrd/PLTZCFHOzWrR/qMdn8XoR9DU/Vr1apcQUJiLc=;
	h=To:Subject:From:Date:From;
	b=FmtbzweZutiIfCEQzaXoSG6RKhj0imuQ/jnkCAMlsPN8LkjIwLhyzweMCVxOxmSm4
	 l6b93WHxMC8JEr0HP0ookOb+AjXWoTLWhBo3zvbz3eqeRE32rU7gXd9IYjcbUS7e7u
	 qgQPqDde3PpBjV+t2yOcyZQY+MJq3bgL0yZxcsgc08PsOfFl9XGqMU3/G/Lwte6aET
	 1Z47ah3o4oGSF2ekVFqYS4I0947V3XLxquhiqTDLApxy27w44YMC4GQID4x0hIBTY6
	 QLUTzguxJCJyTKxOPMrdpNVzyrice0xCWk18BEydH3hVTvbxxmXNS6VwskJALBFY5k
	 C6cnVYLIlZ3dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57302C4332F
	for <ddprobe@lists.linux.dev>; Thu, 24 Nov 2022 00:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166924805434.1828.17517983415267221885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b40a9e627dac21cf2920284f34118d26884c528c85cccfa854fd3033a4d0de2
Date: Thu, 24 Nov 2022 00:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669248054
