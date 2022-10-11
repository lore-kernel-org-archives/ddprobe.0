Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCC013D75
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BE4C433D6
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665519653;
	bh=KBtwJ302ZLFQe7ISezEhz2m6ZFfMcwJX3BpSowzEvVg=;
	h=To:Subject:From:Date:From;
	b=odWydc/pu+1+ClK4uWPjOSD6MUJ2bOpqIjpnWXbWilIiZhVK8SJFyZVNjuREvvZAD
	 jWrDuwxawvwf2PTxgYjgVlC2TF1MfEBFF90qKBSNdQQc/fNwkkoIL+PGNUTPBjROZP
	 0NRoRg0UuaNhCv4buEV0wmx71fM40n4m2xKvGz2KM5vZpwVPYShxxLPti0dxPeJMbL
	 lt9yZ8hpNVJVIn513/otBeyTqTb+KxYBSO9HAp+6KkqapiZHTDCcMAqgg1gORFoH61
	 kOKabnX8nJhxeYPGrz2iwzGVJkdm7IFP/2k9NtYDsR5ZVOg2eWdKubII6McKrtx+Rc
	 ivTzFxsLt4IKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56431C433F5
	for <ddprobe@lists.linux.dev>; Tue, 11 Oct 2022 20:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166551965334.395.12668830784220064084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d30e01281b42220eb0172888853dde34baa7cfe8fab30aaa108a4083ea1e1568
Date: Tue, 11 Oct 2022 20:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665519653
