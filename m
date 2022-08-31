Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFE21372
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E84BC433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661934653;
	bh=BJkXZvZUSoTh4BtNY3vCqf9xNZP7gvr+URzW91YNhoI=;
	h=To:Subject:From:Date:From;
	b=SeMdX/VupqCrxEo6Io+w5t2ockl7dMsDCITtrp2FFe7PcnmFAVojYzqFl2FgJyU5D
	 rFC7s010nvwaOy+oXoY89/fu+wHIUwI5VSjHy2U3ZnRfEV5GTEOs/quBWQ38Mt7u+Z
	 84lZPonCzQJtFS+mWLfm4GksExwsuS/reqUWNpv8EQbUcsxGPFhDEsZX666xpQ9gKk
	 GeecnCtcu1onZOOZREeMDD/hzcQ2Nu9z5Pwa5fHU8D2T3E/r40Tb8O/DQIZNHXO2S1
	 HvBJL16RH1YS5vLfVFSnc3AVo1myijWjU4Yj6YwFNsvJw8kixVwdnRaTDs2iRMbB4Q
	 KuP6MzYgfH08g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52DF6ECAAD1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 08:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166193465333.6079.9399043235826066185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799cdfda7269eb3f1f44db2a7f6918d035b3da2a76c81fe03bcf86a468f32d9d
Date: Wed, 31 Aug 2022 08:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661934653
