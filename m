Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1644BF9D3
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WANTfWKh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8501AC433C8
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704578296;
	bh=quShENs9ezp9tgPeS8oX26cSduUJdAIn0wiISRI5Epc=;
	h=To:Subject:From:Date:From;
	b=WANTfWKhGN1Ozhxh4LadimOZl2wFYZYqDLCBfFJcygxaUvQzJ3OLsWpPKV66zW6vl
	 FiLnMtvGPR3ETyNLQ/uxjl0AeqkdtuSrR3v1d/NeE+U6DE3lBZvhlBpgkPsV05kiq1
	 vFLs64f3oyGlSVVx/X7jZbaKQnmcKXcK6zyeDw20evoJyQgD867SHqvd/KW4gN+V3K
	 qJjF0YRR6UdhDpe0l5jZnr1C/l6bZA985h96rlzJYWURDFPoBOAszkXW85z2HSNWhF
	 TiVamrdQg56JDgWMQoTRmyP/6OKKMsUdGv8OlcJ06oVHnEsBCLqpMoBBzFR+UfhOYj
	 LPhmgjE4DExbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66882C46CD2
	for <ddprobe@lists.linux.dev>; Sat,  6 Jan 2024 21:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170457829638.26913.15768137451789361059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78dd014f1f9cb0891eb502db243239fcb139a96802c2abbed0cd74f5df63922
Date: Sat, 06 Jan 2024 21:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704578296
