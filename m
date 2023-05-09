Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D327C
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 01:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 116F5C433D2
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 01:10:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683594606;
	bh=MQHHR5+F0ylCymxklVZ8+ie2MQthR0YYUR9TSMPGUa0=;
	h=To:Subject:From:Date:From;
	b=gQJBOKV2mVllL3XGNOLwgETeeig5As8m2aSYIuDlwO2wVtpkCrz5Y8ly6xyzgYtr8
	 N4QNlk9RfFfodMWKd9ABjPfyrEQyUkgUXlu+43EQ6LpdNxyZddCT3VuUN3W4HPoZOG
	 dvnPfV3rDP8MR09R1Tl5T6f6si/qHL5hnDNLnusBkIySWwRplg9nG4wuQRDV+Mby+V
	 amO9CX32EuZhzvR67gdMGs5ABpN8dhL5g3ylXl4i1Kz98KnL52qJl2AYZNIfCDJRaX
	 45NabQ93VeQUu8VThGoyAPo/LIo6dc1tROJvUjIPx5+LeD9UJSi4tCiNf8elAG8s2h
	 KrNU5T5OtVshg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB4D0C77B75
	for <ddprobe@lists.linux.dev>; Tue,  9 May 2023 01:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168359460581.5680.13208263044535324495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b647fe5606690a5891be41877c706f47551182bdf4149dd7282b9f20508ef41
Date: Tue, 09 May 2023 01:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683594605
