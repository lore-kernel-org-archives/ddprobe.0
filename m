Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA0A87E2
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74785C433C1
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666663853;
	bh=y4BwtGjLMV+rHfXKauynayySRjbFcZ7ESqJ/2Wrp9Uc=;
	h=To:Subject:From:Date:From;
	b=YpsO2ht00vgmda4yFpXIBGQCHsCPOfYQbKzq2FLE5FxU4+VOU3WG2KHvrrd15SXN9
	 egdNKn/DVKKGIinpEost/FHD/Lk8qpS6BwFGycaPtnt+hnvQe17f+v0TaLMKW17ma/
	 8um9cIm3cCLi0ZUHI8XmucuG0GkNNjjaMaKb87elHgjFXST3bIpKK3SjqJayvv7yA1
	 nQ/6+d8nKVFQrbedynVyQ4hnHQ3opsEtpi92w37SuTSocRoL5ljK/fGgOix0Kl/EAV
	 nIuq3XSOzZEpS0Q4xT7j++qrT/imJ70rdX3q55Nklapg2ws3O7ZKvIw2UiyzTa43XQ
	 iCej6NTc7IeUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57569C38A2D
	for <ddprobe@lists.linux.dev>; Tue, 25 Oct 2022 02:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166666385333.30847.17684819280818532221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a3d00a7d1a380f551db24d802147a2b78c09f2a634c9b7d4cc5849a5c822610
Date: Tue, 25 Oct 2022 02:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666663853
