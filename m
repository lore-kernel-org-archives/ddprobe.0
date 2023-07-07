Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 89E14BA3A
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:57:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6D51C433C8
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688738228;
	bh=iWFdbjrwJ/ScyXMaT+FUHrl/a1IgPBPrud68Pnz4OxI=;
	h=To:Subject:From:Date:From;
	b=Kg53YQwZPHZsRag466hdgsiNjG/RHjyvVecSUAlQ6N/jONIbJOvcqHq032nmqQo+N
	 6Wt9bGH5iteBTqW+kWxYo8uB9kNB7soH8Fn8KBkn3Ox2gdhV74i90/F9UcXBzdaH8Q
	 aLcJQhkR999zjaohyT06+6yVUENwNaOgb99QyGslo82MOOituQEaNC/ts2LfkTD/vd
	 0wsWWqxuv6HBAqZginbYNKg3bjxdid9EaHvnso2c8WLlJyf9Uz0TrZI2X3JBAxmYll
	 3/iOpZzqCq6xE2MCvr/K3pD0FKZen/2UOme5AU6hD/fb909F3uvg7QEJeURpP6JGiM
	 4msnVBCDNlEZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD2FCEB64DA
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 13:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168873822872.17097.3045486161262641527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a146f011ccf19413449d5b14db18a9c946eeb839f21896041e4351ba5b980457
Date: Fri, 07 Jul 2023 13:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688738228
