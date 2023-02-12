Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B1F1399
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3D3EC433D2
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676194445;
	bh=7MrQfI337AwRa8Cn6G2ONugeynrqf/I7MZKTB8lRIgs=;
	h=To:Subject:From:Date:From;
	b=siarWovuEunXG7LeRLMglpX7BMBEpi5Xf7D/l/eC7SsH+U76IykbtDcttShvo3pps
	 94BH3YyimoSVYPSCcbHv0Bg+U9ToL1jjTxcqy6V8xu7Nvos23M+yjZ3Kb8P1ohwunZ
	 BTRqPmv+jWpe2XPLkz8jOTPnwDfZSZGh4t4SIaAyz0vSSGpYC1Aej4Nh0jO6h9UXdU
	 pPsNH9+bNKtHH4b+tFrjHR8QgSZVwoMwXFgdML6mMEnCKIq5GwysS5hzkIJww7zSzd
	 ZYCU8YiZrC82YtJ0EvSm5tomTr13v+Hyva4L0otfU38XBq0a4JRLeA09Rt7n9f/Sty
	 JTQFYoHw/oF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8243C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 09:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167619444572.27952.14567027444436295516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0db1e337dca8a7bffe7c693fd61e71d967b0f1b624068d5cc94a2098d17f2aac
Date: Sun, 12 Feb 2023 09:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676194445
