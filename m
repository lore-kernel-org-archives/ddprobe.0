Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA0021FA0
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F726C433EF
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672381287;
	bh=HvURdgvy69gTUFHnNFJVlYc2QiyQdGC5H0XFL2KnZOs=;
	h=To:Subject:From:Date:From;
	b=KCSD0OblkMT8LVbmQFfUd0yJiAmh8qm3AdmcYudCOfwFgfpgpYulaTybc1dyHmV25
	 aIEtY7wGsIkeq0s7uex2U4BS1qeVSinngfjASbD+CWok9n6w/LNWzRG6ZnV1XyobOV
	 5JWjVHA58irKNJpx/yUzS7+2DIOhfzFtAk1o6ICZ/FxY6pfyQ9OTzbSHw4+KKL+v8g
	 lpeM3i5gL/914D3dH5j39xt62gTKqO+2Eq2OIlypdch4/h838RFBXxT9dm/v6e4Tb2
	 260d3MiSxGtMnSnWyVH2BtDedKT7zLFfzqPZ14M3cceUvSYOGzIm1YX/4EJd8tlJ/p
	 CjVvZ7Z6AvBfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 641FAC4332F
	for <ddprobe@lists.linux.dev>; Fri, 30 Dec 2022 06:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167238128740.23384.3111043855985757368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 237d4213c97ed4d6880eea56aff31a0f8e9ce4f78534dfee3c77c8d3fcf10f58
Date: Fri, 30 Dec 2022 06:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672381287
