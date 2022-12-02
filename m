Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4F8B7486
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73DE9C433D6
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670014854;
	bh=A0ytMb3H6NstO8yzTZDMI2/YRdFdPG445hB3psA0Pdg=;
	h=To:Subject:From:Date:From;
	b=AjwzqB9VNbhvd8sQ546OraS0u5853dxHMEbP3FxzhqdjjBQ15wNb3mniMXVm3nLQd
	 /V5Pvmz1cGYC91GrQqW3oQtacVp/LK/dE7T9rf6IIFvGeYR/KzlkjaoyUNCoR2iHQZ
	 uJciEJ/Vn7M5AQhdRNZEeUlKufQOEIItgqUloeIcjt9wBu72cGAjPQKDpzX9D7Ji6H
	 RNMSVfQTJCouSvyy1g1ZdWsmX71FMXdxW6jFVaSKHV1+S6OoOst+An3aOPZ6ZSHbPb
	 xMKaVMK2YxGgB4uaD6G+EQwqJwb+H03dt0Tz23UR6hvszx4f6o8iavvL5HA1pGHzLE
	 R4m4SH/a5b99w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5622AC4332F
	for <ddprobe@lists.linux.dev>; Fri,  2 Dec 2022 21:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167001485434.7919.17225301161841626838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d0dddd7c6d3866a00530ec2b6a29065eb051b35ca208f56eb27aabe910dba14
Date: Fri, 02 Dec 2022 21:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670014854
