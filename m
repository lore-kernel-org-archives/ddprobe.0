Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C9FBEC
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE80CC433C9
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689674468;
	bh=FlNy1B3wrvFtshI+2UgqWLUtAqdQdn6D8abxzPyTPcU=;
	h=To:Subject:From:Date:From;
	b=Y4LnCmx135jOfAQPDZ3XOGOCqHZpXEdMW+FC88X2GskTRTwY7gFwq47FXAfs0b6Jd
	 /rdm9sG8M1aqWAe52ILLwuryqT7gcQYsMEmrFFH7FkrQkW4I903sOpe9sNSpKaU9pO
	 1kb3ORi/yaSDWNi6Z+0lUFrEdSzPsW0l1LWeeOEyp0Af5HeIaDZbqBr/He0FRznBms
	 15TMy8P/BJhkTuNFO6KoGueZ41hnwe0kFZQWlYsBFKm+MKwf4VnbRuXLwYfcrnemou
	 YfV7jYKz5cRGU5HjvKAaUFFlU0J8jVk4TW/H5n7Ic17t4ShVVPNqptYb32PhNl6XH8
	 Y+wNoVOcDfIfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0EAEB64DA
	for <ddprobe@lists.linux.dev>; Tue, 18 Jul 2023 10:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168967446868.29491.15919620500707494289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 621e16999b15c30f7c9f81e070c22ee4ca7b1c14c6d2a08d3d3ff644295345b5
Date: Tue, 18 Jul 2023 10:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689674468
