Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDFBD7F
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 13:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67AEEC433D7
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 13:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662903653;
	bh=XHC3Lq7XzxzO7EYywW+eFVVYLL+h4fEOva5y6AGYj3s=;
	h=To:Subject:From:Date:From;
	b=U2hhjxPZWZSZ5/NtMLt2SvXjN69Co2FHlbGxSEETtfntnne9qCK8oIeQdc1Jnq38e
	 0qR/Ke8k/DVs2Mf2wn5nuutiFxmgMwwZ7Lkkd5wYSz5HysHVvHOA0fMER/+8RFDsav
	 zeNWTsHKlRBhh6fHfwT8gh1g0bZ29GLmuSD8j3c9V30zGFbHxtBlurpxB/KL+ja6iK
	 Gm09r+O/PKBvZ+JK2Zevs+A+NpczBMFQsYSid7EvO/Gh1ofLIYa04YYwAOlGWeuxyY
	 5qCRAesUSfzpr3xQ12xdGTNruk/5aCs4nkVvQuEQ1iIr+CNn67ln1+9Qeq2tVC4OTo
	 OEyYQALzQwbMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51C82ECAAD3
	for <ddprobe@lists.linux.dev>; Sun, 11 Sep 2022 13:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166290365332.5560.13861623192527051809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 282b50470d1c72af2357eb60489cc8f4df388e19d7798ada2ea5713ab6246652
Date: Sun, 11 Sep 2022 13:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662903653
