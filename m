Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D71167EA
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A68C433EF
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672824087;
	bh=ADd9h6FGFKyDCr8c+ilj11wDrv41AScq9mFeVuD3eWg=;
	h=To:Subject:From:Date:From;
	b=gp6lhVxoh+/M5qhNBl97ZsIkCpXWYsOvkN/nXYmtQWEVpKesRv5bPcL7kwcPY+jZY
	 6C5WzLsXYzIwjg8mj9pihMQeHPCqaNERvy2hFkqNrmYqoGMLTBeh8hia1phdFFz7Me
	 IoazHlO1gpJq8td/u2sTkNnRPb3PqSXhy2PxlBp1BF2/XgDO0zbU+OGXaEnTyhLWRQ
	 csQGcuUkaSFlvVv5KLI7VNoCsjqQUxvU6NVDEPV4JkjO4UXOGTKJezjB5O32MGTjsR
	 2rikmTL7VOVSHS3jaFUzVXo14GFc0byPZaZ+ae+yqUfvirRs8c5Kz7MCdA4bYbjGZN
	 tjMfaLWaovnDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ECE8C4332F
	for <ddprobe@lists.linux.dev>; Wed,  4 Jan 2023 09:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167282408738.22803.15914723299189264614.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6600552e4d5144aa1283b973750723d96d81436d644402682c3eff6baa98521c
Date: Wed, 04 Jan 2023 09:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672824087
