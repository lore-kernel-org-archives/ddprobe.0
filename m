Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78417CA4F
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 12:52:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C47ADC433C7
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 12:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690375928;
	bh=0xgFNGwoIHGqua8G2tlHCcDFAYwhk1HZJOH8V2s7Spw=;
	h=To:Subject:From:Date:From;
	b=YhEqyS4zbyLXEg8BQVXQhGT+VK+HddmyPyVaeoW8XsRerZ4uAswBDRexLSFf9Fv0T
	 YOVOTupZshe2Dymcjy6gKtAgyvGey2hf9gDh+7Z+i/8WxfbuVXUHXOS6qmPbUIu3MM
	 KYihot65I0qk/FDwh5HdKARdriyzz0x0TrJ4LlIWjFfnOowflCHUYy5FRvVVqvBdD9
	 VpwD7ANIO1oWZf4A6T4hTH3lWoFYJfvu0g5x+FZfDaLqRgjm6/MmUd7cd61V5g6kWw
	 w04pqz5I6tuz20PtuSDav5eaSumzXMaGHacxcwJGNoPSo2CeR9nZ/Tf7EUnb9kCwJ4
	 JTP7IRIMPFvHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3811C001DC
	for <ddprobe@lists.linux.dev>; Wed, 26 Jul 2023 12:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169037592866.9855.9062346837235720668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f570c8ad126375a2757046a80000d532c1d2bb3931da57a15553249ed7bb424
Date: Wed, 26 Jul 2023 12:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690375928
