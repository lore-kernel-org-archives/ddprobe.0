Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA7317C
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D4D8C433D6
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662635453;
	bh=DAmXLyzAMxvg/JxKqcQ+D/N1et4brWNH5+p/itx0NdA=;
	h=To:Subject:From:Date:From;
	b=PzBuRIposXklQk2KJhbRFokvXjG6ZYg7PidABXy0MKP55/C7Rz3YWIWgc+V9cIVcC
	 3h7PILo8nfSRa9vK4zXJS1L+AOvdC4tHp6TSPvmhdNXu7tVShwmKP6scv6uDSpgHFc
	 GdspIaJxFAgx+TpHF4SKVWyBcosR0Ie61fQtZS9nlR8vppVjYWSMds6DILDyIjtZlr
	 DUlXAp5BwrS85y/D1iq5VyI1x/XK37bDg2BRoGPy8vUAMdT1BBdXo69f9ch19Mw8iL
	 BqnCbjsD48H+7H8lyskRFBliK+nwAavdhne4UGpSs4jcFR58Ez7YdbOrM/+MPVwskI
	 foLMUPD9xGQNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F897C6FA82
	for <ddprobe@lists.linux.dev>; Thu,  8 Sep 2022 11:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166263545331.10058.1257677824167385640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6f1735daccc4707673423766fbc0327758ba302599efa7569475c9f27d5df82
Date: Thu, 08 Sep 2022 11:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662635453
