Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F0923A0
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C4C5C4339E
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678772286;
	bh=Io8o3QzJNPnNLmROjLkC45RvjqeFqpmQbF4BeFGia/c=;
	h=To:Subject:From:Date:From;
	b=YDDPFgQuNg/8CHhTbDFof7WBGOVc3rnLI8sNYY9TlSBcPp03yJz14pqnTYAWSQQe9
	 +bcNsVoRxQP+huSQdRwAaSeqkL8SL1Bt5Z7QBmjnW6QcGlKYrI4Kdq+8uJrvwQPXy8
	 Ncwau8QmzabEm7AWQb8nXkd05YFM1Dr1BzLHPZzTwpkFxCNlCrd9vPilZ1fPl8LyPu
	 VtSCfaW88CLRAAzpXAoQ5lAmGwYSds46Eg2i1TKWC+7zNv2ALebLefJgBToel73Dkn
	 ZxfqxH3t6IickJkhtgotPKnp9UFn7BnsCsu2fcCB105srjXcN54Wk9XAVnh+4OTVDQ
	 lgdYYoVXCRFMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB9ACC74A44
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 05:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167877228586.7705.17570184240672775488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ec4cbe95a8808d680490beedb8e8089aa66e977e1e34010547d192ac3becb6
Date: Tue, 14 Mar 2023 05:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678772285
