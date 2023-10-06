Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82E5D18021
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:47:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fo1wetqD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2569C433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:47:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696603628;
	bh=dRlcpo6anpi26ng2Qi2rawAqhx8xMNPEOCW8SuDxPbE=;
	h=To:Subject:From:Date:From;
	b=fo1wetqDFLQOwdY7HCv/66DCNNh5tAQ51OXR0FzVSvFeaGvhKHakc6QLCpKdnq3wN
	 Jh22sI0hH2beY2cICerU6NyS+LF+HOMkeK7/Ff3uulPJJYIn3V2e0GF+u0FJ9yO3jx
	 2olVuAs3LM9jiHxrIQeVazFjLHbFVpKf7qFUGrH6k5cXR2IPNDBanGAE/uIYTpZAE2
	 gwb9cTcWkoMJUyto6ENX1nYotw8V3mnqe5oLWwIjkdrqNaAT92IYKYnISqOD6Sejo0
	 c2sZfkw/2P6Vt5InuIzDhmC2WAnzgQ2Dw50/enpo8/rm78SyRQBj0fJhzuymFad853
	 /QREsn/lcKCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B45E81E02
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 14:47:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169660362877.5898.2223007425549417278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b9df55e5a7e2d59815b043df58c9e36ad485f947404395805e2c0fe9426dbb0
Date: Fri, 06 Oct 2023 14:47:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696603628
