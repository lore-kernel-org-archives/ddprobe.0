Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBDD2109
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B2F3C433EF
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671925887;
	bh=pdhd395DgxeEen+abax6jYyOsuzkvLjlk/5iLhzC5RU=;
	h=To:Subject:From:Date:From;
	b=RoTq+15+5S+axYWdKSVV6GuSfH/PbGqY00tZ/cLNKx9LtKQnubIW1x0/cvGaMHT3G
	 EidIBAj4Y4EwrI/9IFYGNSR4BemCo2U8ByX1WsaCh9nGFP3PtoK2onR4idVk6NmNvZ
	 2q1QLhzUKSDajEVuahPMT24GrpnNH1oMm9XNQlIm8uNLoloz0ZWnFNVuCCqIWCbbj5
	 WqlmMgYfdRXdwnHnWnHClasP92byLLOGwrLQMC4wVZlyJjsm+bgzUW950ZzRuiD36H
	 lZuGEZ3ClPFcC/xhCyEqpb+MMgnzoi9P0wAxpbplEUTFfsjL4qb8asuIAvHvRwJOiu
	 +42iT1UTnLLkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60F54C4332F
	for <ddprobe@lists.linux.dev>; Sat, 24 Dec 2022 23:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167192588738.2776.1256727085982074211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49a27c7bf3b7703c93b93dc42f542afdcbdba166daafb6ffa023e3fec5645b12
Date: Sat, 24 Dec 2022 23:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671925887
