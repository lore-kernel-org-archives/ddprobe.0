Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30632848E
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C87C433EF
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681752545;
	bh=271L7UGXJDFzZ28MID2jFae9CfCvcbLFGuHL9qF5MUM=;
	h=To:Subject:From:Date:From;
	b=YBOBboM4R3hCbIQ8tUDaDncqD1JnFHdDRI26MpvubqR/G6isQixpG7/I0fx6v61k2
	 TMdLRAb7A3T8xobuV5TNDXAH/SJLIqiSqvuL7+gtMogmervM0aWCjKl3Nt8OAUObF8
	 LAHUtowb9+ZzI2R8R4t9ZDEslO5v8kp279E6ZRJv1f4e28DTY6pHwkCSCAO5Ccr2mu
	 LM82L6PwUJu3Wok6pyYZFvjz/cNwJjRaKHEOSDOG4cRXA2vYEpE4fZehysjXR5PKmv
	 oBAe3M+aGjq1dE8Y9AKQKHJN13beUm2E9pb/Tj+AXw3gxl8SswFHp6iRspuYn5iGM9
	 6wgO7DE4HbBug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B59ACC77B7A
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 17:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168175254573.5542.8402254153806491703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd928be4939f2da2edb0ba634ae0ae05e1dcb021317646cc01854a238b7850fe
Date: Mon, 17 Apr 2023 17:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681752545
