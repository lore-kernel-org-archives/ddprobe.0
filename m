Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35A623A5
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:30:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72F63C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:30:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661517052;
	bh=9mOwovuZLchwcQ+t2H8zwgmnPuOypfOtOwhy60K5Rxo=;
	h=To:Subject:From:Date:From;
	b=uhIMjidkiFzR3h50zk44ZSlRwn4FHVJT9uzDIkDVUQU004iyJ2XxI2xIzEaRi31JD
	 3S1AaxTshtKeTaGa0kSe+KCVmSIeHFDNpEeXBUrlet66lVUat0uRutOEm58CRX+TZe
	 nbEfnl1hrd0wGd63QOHiXugLe5X/71BKc0i/bhdHnoGgB3JMWNydnukH+SNkztk1/J
	 IRWycgJRlWILyUQN4OlZZRL8ROkmo/qUriWHP5xE4g/o20Xp7Ksmk8ucm9SxiSk3rw
	 X/EHaUTkTwOnEmWtlnMr1gtHH3ETP7EUBM/YnS+0xurOJqpNJGUQZFWvLvl1fcclOF
	 dmGu8BerD7cfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 593A8ECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 12:30:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166151705235.32214.16952742433330096292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 640fa98a7348a6133b350b342994dbf4a15c2e91896ebd16142744e1d21d576f
Date: Fri, 26 Aug 2022 12:30:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661517052
