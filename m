Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3359686348
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737968754; cv=none; b=JzdWcPTjO+KatSXXziLSQiu6PeSUxY8o0R5N7eLpQw2COPHHxuEDCZIRAlaoIwUPsX3faV7ZXXvizEdpE3PooyAkovgbmMa5uzu0YJQkr9rBh9Izfar82D+Cw3d9LMBcxrrxNSLDLMh8cFP/pkJg9a/8neRsNoieRG1LlXsgbNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737968754; c=relaxed/simple;
	bh=y3ISTKt+iQsNUUA+KT4YqCStEivgncY6IosZqkMZzR8=;
	h=To:Subject:From:Message-Id:Date; b=RHw/f9v09QAUwfungHzEjSQK54npOJjP7+fpTz4qdKy/JRcRpx7mKAii9Z6aD+ACpiMmScPxhLmP118tCXpMIBqQjEGYoy4NnCxzb6V4Ld0gEFEtU/VoKUGQajSxKoSp/CP0AL6A7HALZihAItxwRki7Gk7TYq3FMQeLPbTyTOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgS/VWXb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgS/VWXb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55AAC4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737968753;
	bh=y3ISTKt+iQsNUUA+KT4YqCStEivgncY6IosZqkMZzR8=;
	h=To:Subject:From:Date:From;
	b=JgS/VWXbvdN3J2Zwf72NSckWzUf3VQE2cwBWjlHSIS1ShnscLNekmAjBQ6ucwwoUF
	 WBCxD/KUj95HYp/BmCqJqfM1lUunigUmIP5AikMw7EI2x3Xv0nd5tx0PWx1AV3xono
	 04gEkPF/RjrW0IcjGqnXcLrF+B7vWzvFHqnq/lhwmSD/HsYRJymhy1qAZ3d4M2FL++
	 kBGS3A8OMBsAUxBAjTTkCm5Z2z56K2AY8zP1c/80Fmi70A4WT7nDq3XHDukL6ypboA
	 Xts8a6wYpHuws4oJvCHrvGcSjw3CoU7x9v9i2VKyA+ix4gyIP0qFWNxNeppxv3dfnN
	 kTK6DQxkodHZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8EEC0218C
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173796875362.18229.14939258805669679692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddbd7012f60045ab738232d1afd42f4472589063988b34c3f34775490e9b0982
Date: Mon, 27 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737968753
