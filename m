Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21389619DB
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bYCgO58X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82828C433C8
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701519496;
	bh=Y7jIBZweIE1Tjvh5qgevtxLf+nwzpLmcPLdLuwT6xG8=;
	h=To:Subject:From:Date:From;
	b=bYCgO58XH9xnYvx79mmrRW3aCrc7tzNkdTpquoXUF9xQyEAcaPkSA/Sf4TElfWAB7
	 V3S0A7fHv1Dm9ndYTH4PAo8tA/seWcIJkWQjjot363WXZBYDr6A0EmUMpsFqY+6O13
	 OlmPshl6LaSNBTV2Lrbq9LyERQ29y042/Hkj0FOxHhmHUAKcTrqGTm0BVoUzXwdH+u
	 EsJp3SMgO2hWILSy73P+YJlgOhm+0wFMphgLY86/CMm859yDIvPvPrErOo+q4F/Zh9
	 FiOCyo9KMboUMYZpNUau4dYcyAtE0vbtPIq7MOOUnzJdKpWJNnvVn5WmAY6W1tEgwh
	 Tp9gg7xWZs/Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6637BC4167B
	for <ddprobe@lists.linux.dev>; Sat,  2 Dec 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170151949638.30089.7723760966628887280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f2e45933e232435caadfffd7a365333b72121d55433882afa2a4896d69ca43
Date: Sat, 02 Dec 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701519496
