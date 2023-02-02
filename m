Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 412198F43
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7048C433D2
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675358765;
	bh=cjOg+5xNl+F7Gt8xfKkqpZkW7/Ir13iHzc+/2dc6VGo=;
	h=To:Subject:From:Date:From;
	b=qDpsxpKz4hzIUFkk9xnp4QKhOg6Nhnvpz7+3Y31pHAwCchF3wFiC3/aCjtZeo8M+m
	 r8kUJZcCmM0AxF2rsbRMBzU3E8gsW7I5CtxVwd7fuK70GXAGIhb9xEeGpGGHZTJYo/
	 Zfcos0pfPP+XP7xkQhC5NkNlP74/slwknjFyMIhQVmA9UeR0kJkGOQXqT3FsgBWzUt
	 3f0lCBqrHcyyuu+4zpsEG+vGyXN7gTMHoaNojxX19dre34hZrpNk2aIFDftT1CMJGe
	 JQYUH/AgEN6Jox2U5DHx4EiQqynUVsnvPOpjYlR483w3g7VJhJ1nhFDsMUdkvQSQYi
	 HANjmyPkO8AKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC30EC61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 17:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167535876576.8491.6738972560331115986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 396003fa7ecd232824b485c321f63afee6e4856be6bfb05805b8b6c0adbecdea
Date: Thu, 02 Feb 2023 17:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675358765
