Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBAFD2F5A
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7480EC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662241853;
	bh=DywTyuML5yaNfrkgkHg5rdBLADFjZmgcJpepE8GA3W4=;
	h=To:Subject:From:Date:From;
	b=CQS4qB36ueOTZRdkOkpePbaZPOrTxmPDnGt6kvBeWX0G97pU1pqUhVFdTsc8cwJ+L
	 GIylRNYe29gFKMA3XpGMazWRj8GSP6NOb2VBQ09fmlXp/VqdbOW1BK/iTDfX43o2Jq
	 IBLlyVmzAsJ0Z+PVKL3hNsqpV2LwWtlfRy7keFULLmaleBzj9LyQSZ8xSZYfMV2SOt
	 lrdN6jFX2tJQrpcuiR9KD3+wSOzxqkbQI3aywO8OAJpU2V9DkYun89Fzz35EUMdXIv
	 CwksH9qQjvoqxyybJA3RtJpsvvMFwdVhXPqpMfsFzUaqxVRhVpzYCJCxF0tDlzRv3O
	 IRm7yK9LpRNQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BC54ECAAD5
	for <ddprobe@lists.linux.dev>; Sat,  3 Sep 2022 21:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166224185335.17834.13893920022918917227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4659f722c443d8417ce43b630bed98ddf1f75d61c8c040a065eda0ce79ba6141
Date: Sat, 03 Sep 2022 21:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662241853
