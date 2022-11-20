Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EEEC5657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8B2CCC433C1
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668927654;
	bh=zPTw6mVA3vRtTpDTiX+G4SamOCb8zDtie7yU9rdK/bs=;
	h=To:Subject:From:Date:From;
	b=pAEhSL+/36sHm0N50kfaQAHVsTDJl6crRkx8mJT9CWXKE7/8ciK/b3otHfZgy3jIm
	 LoPS7c7EqUopWSYgWkMTnehT5BNsdjF8ZsNC8irC6JDbXRofHrBRT87Nmnnb4gucQD
	 7JfNSdELGrvmL2dFnlxIKHa/XLOR54pV1F/Hah0w7aDrpu4Z7n+LtrAiNlsZ4DJhOu
	 M1rhjI6QjJYXN0t8RL6bDrCfhoY0svOOntUrW5IxSwWGpfKnJMbVm9JMYY3aS+qHL0
	 n7Y5oVx24rFix/EFuLAcc4ti7bBJPumzFX3N9xpQQB3yC6+kuHeRLjHN/smnjAZxS8
	 7HzARGpOAjfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6180DC4332F
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892765439.1957.4446652367819590851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7d07720af8f08fc3927d107e86944a3ceb81269f603cc17d7d4ef0e5bdd862
Date: Sun, 20 Nov 2022 07:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668927654
