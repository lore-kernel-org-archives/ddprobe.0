Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14CB2F33
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6D67EC433B5
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666216853;
	bh=7hQIr/nYDxK2Rzv35xb1MV0WNk/juaF2NZogYcse0Sg=;
	h=To:Subject:From:Date:From;
	b=WtG2sLsShYU/6BuDqqe04blL2xgcRDR2b17wjYOQQllXfBkjx74Z9Ovjj05kWEEtn
	 DR11XpZYqUy8qr1LznQ2FoPqrSBKaCCEMErzI7cUMu6w4pytbCyN0gp1Ru6YCG88BE
	 roYGu895b+beca9nRHTdees0Ht0OZ70054HW7D93qU1OUPvYqcBvn/7cH5h1UYGTs/
	 CsM/C496JtpxzEPvxKSKkFwngwYl0u6mY2o9jZr1ujUhERgnZbByDxWV544CHB6qWm
	 FBmCNoQADwOIEG/BAbtqen2DBCXYzZ28SrH4F1ufcJ9vkxgsoy0kwWM6A0Tth5gWir
	 Q9swZtyK0QVVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529ADC433FE
	for <ddprobe@lists.linux.dev>; Wed, 19 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166621685333.12697.2331305176064024294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ae4f9a4619af8c02631d53935e4162fee28df8646a380249317e133e0dbdc9a
Date: Wed, 19 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666216853
