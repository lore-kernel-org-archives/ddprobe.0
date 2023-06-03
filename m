Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86FEC2904
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 13:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E49E6C433EF
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 13:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685798285;
	bh=boJZcdm8QAw5jzQRSilEVtRPAk1hMbnhV7KcGo4hJ1I=;
	h=To:Subject:From:Date:From;
	b=VnZ2td7gVS458CkDJWA6z/T2wJIF27yV4gQypa7c/5acsg6JXdVddLm456MgMIwQL
	 vGxNvQkHir2QbEgtmRyVm2zn/x+KI9f6VLpYeCHawJYDQf2N6sk7DVnWsUsv+uHJzU
	 ufMvdqknkGY24s4anDGJ6Dejisri81QdMzrMGjkgsqeez0e9mc+8cLB0rCslsDTtRl
	 uxOysXw3z8qVRbjOXdEcRURtbkBPe2axVMsASP31BEHa9b017k8sbZYrE7jV7si2tF
	 GuGgHOzCNlJFamJwutq0ees80UqBI8BNFTX7Eumrbi9aV/PNxv8+kMB0Te+jcpk6RT
	 PpmxSzN5yN9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1421C77B7A
	for <ddprobe@lists.linux.dev>; Sat,  3 Jun 2023 13:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168579828578.397.17251020489025280719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda6419fce3f6865bcdaba18a5e93d9e3eb7e12cded8cb0e22632edc18638c3c
Date: Sat, 03 Jun 2023 13:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685798285
