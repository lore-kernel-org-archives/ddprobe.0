Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BF481F959
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 16:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC16CC433C0
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 16:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687450388;
	bh=Z9Owtk6IgDxJ5l8bS18YUuJiuNXsFWSRa9kokvGqZGU=;
	h=To:Subject:From:Date:From;
	b=g8fx+cZ5sS+SJ7IKaNELoPQ8EVAsGMCrUepz8u6QAVhr7xb8bjMJyLzcmhu6iZH3W
	 exATmnooQ5RsvSsLljTYRE/tguiJqtfXWEflJsveelWA2WxKOYn4ZC/AC1Fmc6S2Js
	 +ScCKVWXLplD5cttpb/5moKpQLhj3SlfpWMnhDJEnA6//SVSONRsV9gFObPa21bAgZ
	 h8Zqfym76U0wZuGiT+XXmd6iscT5lyY4z/YsBKqI1jUcgsiCodRuPjhB2+cOXY4d2g
	 weQkojxTs4/VY8UyrnvBzIAe82qGj8KS9BgBYeNvJm9HQYsT9IkvFpXt02x+1jmX9e
	 VuFVSB5u8K3Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4949EB64DA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jun 2023 16:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168745038866.15010.5600348152308015065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ede8911bcb645628da647e16ed30ef5aad2f7cd8be2ca0f0491f7ca0a1cac74
Date: Thu, 22 Jun 2023 16:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687450388
