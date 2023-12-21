Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A906224C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A8zoU7Pi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77DC3C433C7
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703151496;
	bh=E8zBAUEUsLu/Cq0nYTgUZbNVzKRyMffnBSrzWRQ+9yg=;
	h=To:Subject:From:Date:From;
	b=A8zoU7PisHBkT5IDdG72oARYmA7nnCnvbRutjMtB/Yh+LZeU9CoRwE3GSE7g4kXRz
	 lYkuTVXcKtc0TycJzifIDUJxCHOMYLX3FzseWYDGbn+XjC3TNHt0cVP0VCF9apU+uL
	 /7GO9VFNG6C/zkjWJshGLUg3LGgXKWq3Ue1h7sXsxwoT4Gx49Yn4R/vcxRnebSx1DM
	 ec7MibSEXDHB5s4jcMM3/pDaAUdZs2uJpydlVfyJY9WsZWjmC7QxDcSdvMd3ala6Gk
	 k68xuOnz1wywaX821ohZs3+3vJ797r4wuj5/ayEjg/MWXsWoERIyWvShtBgSSFdojo
	 dyFfJ50HoefaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D5C3C46CCD
	for <ddprobe@lists.linux.dev>; Thu, 21 Dec 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170315149637.25698.6432101020645998480.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01fbdd6bfd55c343c0e95c8f1650dd89295d8300e3018375d286af72e8e2e6b4
Date: Thu, 21 Dec 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703151496
