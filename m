Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5602A1360
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 01:51:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFC16C433D2
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 01:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681005066;
	bh=qIGv86dCsKwzCOM+brW89vy6nXNNNKfQKOzBoKjOChA=;
	h=To:Subject:From:Date:From;
	b=euTEBfcViI/jrNfgWl1VR9Rp8UBw6qCuBnIoLdGPZTkrJhxL579aPQCHuLp1ow6eY
	 sSWkZUBUQRjwboPCx7lJUZO0/gDjtcCJsHQ8GROUg9q62Ift0Xyk2pVr6plGozzwet
	 vOiTRIAz+vZBZnWG0NmSFRLP49WT5e1Mhl7vKDGivdtcM5DM7ftxijXcJTEvZDsi0O
	 jZMaJBsqw1dEhKfBxjvSWmKiz4nZb0OtqosJMgSZ221o3LPwGHVtqnn+9XcRDhROmt
	 qjf61/NBg73CYYXHey2kC8VYoqfqC8B0riS8FyTlAfWbJsS+V5DPOyEbGuc+yxnygx
	 43AhlMqOn1GpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D027FC7619A
	for <ddprobe@lists.linux.dev>; Sun,  9 Apr 2023 01:51:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168100506577.26986.2103924322758635284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c5fe2e1f80ec785b02834961d13448462500a8c4d90d5530db81ebc013afcf6
Date: Sun, 09 Apr 2023 01:51:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681005065
