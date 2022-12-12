Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1BFD23BD
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79BDEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670841687;
	bh=EmP8FcRUrGmnPDVYlpYk5CEsUp6IH1N7u8hkrpFsgEE=;
	h=To:Subject:From:Date:From;
	b=D7ezhgJIlJ9rpFMb6mGX9M4YjdYclZ0LeOdyxmu5EvzrtJjQ6DxUUgDpiS2NKeGnw
	 Zfimgcr0vNiB57kEBP7ZJ5xJ07HmANu+5cRAKT9DxuMe8Yneq7c3bJULYTQjwBEqCO
	 uxC5T4PTONwrmACZY9W4qXh1RmM9UC6vSzPot5FwITmaHYvzyX1TcvVbqSG/9NjPlk
	 HAoFPGOdKdc3bnzGyjWJXj0YQKdE++XIgOjU7rLemI0jRztyEsMzfdxFEKSKmp54pj
	 I8I/4UGFBAQ7iZggdQhyQ7HQWO4sl6OXwT1Ashm+Yauc2DkEjjLUXTFtpHI4oLMh0p
	 7DrCc0pNpR/Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF0CC4332F
	for <ddprobe@lists.linux.dev>; Mon, 12 Dec 2022 10:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167084168737.11918.16520724059291312074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32cba2cff840ff2de753ded73527d83dd7472fb16212f2dea7a9290ab2d0903
Date: Mon, 12 Dec 2022 10:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670841687
