Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CADCD7C
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 743A3C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668478854;
	bh=7bvPvKHZMaKEoUoVxpanEJut30J74lHoScNKvJIh4TI=;
	h=To:Subject:From:Date:From;
	b=p8bs/nWjCa+tbMmIULYobzoJdPR39AGYOvmkwF6NuqdEegw4uZ1FwbtDoQmSadme2
	 ZDvwg1i1OmWIwSBwA4Q39fDv802Y9VInS+OV0pCg4PlWLTQ0o3lAYRIR5TRBHK4QKu
	 ScGvmW+sjYR6qGCBMRmywgaNAQhX+G3hOwQ6p2AIn3M5iFYlKnCvBJyHKSzu0iQZxO
	 qpMGfuK2NSraVMQOB3NhTO4uYmSYcXrEsQwTnc/SscrWLfPNgYyQELwULD4vSa6qvn
	 GM7i8MUISNtixTC4aNKe3OOcD/UqqELTPqMy/rLwGpm/ZIkTUTz152W30Cv2vkpW2S
	 omwLrn8AuZ2eA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5807AC4332F
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 02:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166847885435.25945.7053547150048172149.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a67049a09b0ea619eae669b5e218cdc2e8ce06f4840ac1bbc944479b20a48c
Date: Tue, 15 Nov 2022 02:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668478854
