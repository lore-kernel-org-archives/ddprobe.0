Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA8C379
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5567C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679733125;
	bh=jOJpDVpMIHnwyetz59uEABlKvVVb7FLMAyG4ZCoGSoc=;
	h=To:Subject:From:Date:From;
	b=ZEaXrgaSD7qj4gxeyj3nTDYboY7ibwT8XpF/IHJeKLApcRneUArOy9h0g9ipmYTCE
	 piJPc/6xnU/hUra5gJjdUiRf0Ei8EDKOBYGyvB9rh/fr4xL7cBvLF8Z72T83U8AcSm
	 eAbVWgs8XHI0ceN/DHo+v0GgMegH7Su03JZ/5q1+2xNvT8TKfzVP+fJ/TVTIa7NX1N
	 kRhqsSljwbh7PftAcVvp5HtcNVZbRaCp8agOPCegri/1kJ7LVpc/8dNZnIrt7KGCZv
	 9Hpp0R/m0G5oltB40F/3Eia1JdokyHTPEKWy+KFFDvRsnZ2+2WdDHGh1ejmtzp6hqg
	 /LSj+yjtLM73w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C718DC6FD1F
	for <ddprobe@lists.linux.dev>; Sat, 25 Mar 2023 08:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167973312580.17187.14101388276598331926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2082e186460fd89a59bbd96801e4f531703ee79736eb47b70b1351eb62b8d6ce
Date: Sat, 25 Mar 2023 08:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679733125
