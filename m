Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A6C1101
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 04:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 04AB0C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 04:38:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684039086;
	bh=L1ZtwNgyGtaOtOla2wishO36HvwVlmuzQAIwLB+qWJY=;
	h=To:Subject:From:Date:From;
	b=VYHlkoesrqytgnTqzjTc6u6tUPAhXBoB3zgqM97z20UosAZ148tZSxMq4WaJKqJ52
	 QzeiTKt+73A1edXY94sRyOBoPx4qqaFDW7Evaurab9JHMF7jmmZQTV5nZDh/zil47/
	 SaWatLS/dCPT86SbWTg+LCFcW190ElUl3PP1tIokIbiX4dBP55osPZ1WQbEJ1yu/uW
	 DYC5QVwap5xhNfG7n35xKy0taWvVrQccoudsEnnoGZGdf1nSMlJGxDZP5t+kSQ5fRq
	 Y4f35SdsZ1vfbIHpsY9HJBE1qopbQ7JJgsu6gXuiMlFTe3PSIJ+2uF2vTmVtGAAHwS
	 XEljRHNunl9zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D24F3C77B7F
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 04:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168403908583.25485.6032387948183879811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe3cf9dc7d1de546e815227dacca1b47ed822200bee4c7bace8ad2378de7ffa1
Date: Sun, 14 May 2023 04:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684039085
