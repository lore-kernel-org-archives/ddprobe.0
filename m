Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEF1C1369
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 11:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 714EBC433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666524653;
	bh=m7OR4yHm9LLXzOmh4/eLrYu42OluVmceAZhAI4dOrro=;
	h=To:Subject:From:Date:From;
	b=gW8Q6mtX4bKnl3k+KRUau99YiQRzrzwBa+5FhCLn44qz71Mnbzj6qThkyToza8Ytu
	 PYDWiWeQO6hjk3Tm6kry4/3eKa/N6ulPp+wbaL04+CLIO5Nn6xU9p95YZ8h1mR13mq
	 7g4fEh1orvAlQ/vnimhaN28zyb3nZMRk+34lirxhyZQ68Aqf7KjF/F8UcTD1jg4wyo
	 7tT9RwlvrlaQtTlJuqJtqvnikyLHjV4l3I4ljt7zeF8tzwadi1yboYWgKmury1v5L1
	 8TZQYyKpZ2tG25rYIDXvfIAxjZOmoJ+C1iKBqtB4sjg5dvoCL/eW2Ewkly063p0DIK
	 ltjCnCB5HkQig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 574A4C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 11:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166652465331.9791.18254859044975880931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51c5f361603ecfe28a676990b72a3c27b6cfb5516fecaf9dfe58d3daff02e4be
Date: Sun, 23 Oct 2022 11:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666524653
