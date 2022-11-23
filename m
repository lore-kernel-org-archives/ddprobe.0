Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C300A4699
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EC6DC433D6
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669226454;
	bh=5Ghl710sHIB9gZgY3injePjEVp7plWKug/tUnBVL5sA=;
	h=To:Subject:From:Date:From;
	b=hYAINGzVtoi+aB7XEwHxYGgo4vuIn4swrGR9ladLRA2h3Wi28Li9SXEHwbfdxgzvu
	 ZctgdKE8k+ugRUESmJT4+q77XHiO2EXJKzo5wybDd8tDjvRBp+UxGcILY0HAb5UYDX
	 dGPmWc5zByz4Pfb1PjDEtbLGihoD85gkp17ZzKQi40x8eBNuaW3xAXszLSgIaNIECX
	 0nB8/8MR3k9qnilznu86bfgMXuiLqqyWzMoSLk/L8CoFQDDDGKaMcrYaboFZFHCgls
	 yR2GjPMQbTAdV6S5ub3oUal9hqvwTvU1u9wisovAoE/KYhNqPFZtbsBblKbNkE7ASB
	 DdkMLeIJuCzaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 542E6C433FE
	for <ddprobe@lists.linux.dev>; Wed, 23 Nov 2022 18:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166922645433.15193.16846868048301953470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b8a3720a19b2762814c50502257250db262891559258d749129984f9082a74a
Date: Wed, 23 Nov 2022 18:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669226454
