Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7ADC3FC2
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6937EC433D7
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666028453;
	bh=X1ae13yCRvRSJ5V23PI2a3KyM/kCZrrERp3IWS/Jr+I=;
	h=To:Subject:From:Date:From;
	b=lxaEBZFS3+APzaGqFg9OaUAkNmbwN+Iyx1ude8VAZ5X+ZKpTVPCxA8RIRgnpHaX5w
	 Whc/RdpiMawlaOs3y+uoNHXsW4te5FHppINigpZFMOxtY1TBMRHSuZ4KLyB2r5WexJ
	 eWO1b2s7A4IjxozUlzyUdy2B5b0Y43NLw4E2dI2CfQwSOCo/QiIktvPUbl5RHHfdZt
	 lS7PB0dPz6alLrs9whDXw+DdtK2RsQ3yPtjBCcrea5V0gNZtsy6V545GYb0CyNZPhH
	 5w6pLwRmEmSGpTUNSMke4ZG9ZQ466WC+3vJyRINNSYzJFvPo8JuAxJy/K86UfucAwh
	 N0fl2ll2EDvSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51A39C4332F
	for <ddprobe@lists.linux.dev>; Mon, 17 Oct 2022 17:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166602845332.12637.7772255966298985399.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b8a2fc725573338bd3f78aace2d0a76d938868fdcb33460148f7e6078466d0
Date: Mon, 17 Oct 2022 17:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666028453
