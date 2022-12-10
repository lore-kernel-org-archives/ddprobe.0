Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA9C3363
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81CC8C433EF
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670633487;
	bh=LgPzMrIXw14jRsKlxJFWpaZ8cM3f1HLeY1i0SatEodc=;
	h=To:Subject:From:Date:From;
	b=rxziP4G1hVJOkOc28yXk53iz7qVSp91b6AFDGwY3cC23r/7+thkZwOekPXQzxw1gb
	 wkA/AB/KU5lXIo8KLg0LQIFDhY6Koryc5BOg/Jhz0Bkxge0+cc6n4YmTj2Ei4Azc/j
	 SmQnWh+9GOCt3j/I6x+YJB1ZiLFPqEAm6yQqRLc6K6vInnVrypBj7py247NwT9xvTV
	 lrHSiuqWn1WL1/3fynxrBWInsGmt4ag2shMaXn4d0a9rLFVNmvl92kIVcrwFS+3QXi
	 jjNNseF8JnuF2kAPWEifjjxdd3c2ZQmFRgGFEg8cHTG1OK8ODiCnkBPkQNUTYcoHQM
	 5MxuWSixXDzpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64B08C4332F
	for <ddprobe@lists.linux.dev>; Sat, 10 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167063348740.11028.12838676374678174522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cabb922dbfc41ec6df4dde14b2d8b7954fddb043f914a53377474dd8af60becd
Date: Sat, 10 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670633487
