Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE19A95C1
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8FBF3C433D2
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673033487;
	bh=bH1wBBOXsc5S7UGAls/fixjkoCCl5p99uR4BKCTUFP8=;
	h=To:Subject:From:Date:From;
	b=QmfZrQKO2kQsSBSqy+gJkZG9D6SRgN4ZlMxpctSBoUmcxvRVmLwHhRh1w3DwaLnoQ
	 OH63sdywvNIzLddsVA7QTXk/yI8HUC0bonSdx0W0M+1rPO2qnfi0JnKqgLhwntKTkp
	 RCnOlFMTJU/c/a/gCXpIHG8lf0c2B6FntMZPdo6C83Pt3IFmdNOnTNywWhK6ed5izY
	 FcAop554x6kMYjo/ucNFfNI2NiJ3aDI/JUfVtU6Hn/1WGuPBoNOeMWmzLdfj2emGBa
	 P+7NLih0BOgp9pLjTK4rDF/bH0kidq7FPyqef44vt65iuC+6vQNQIqc0Iuv6+9jtKM
	 3lUt2OtZiPz1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6FAB0C61DB3
	for <ddprobe@lists.linux.dev>; Fri,  6 Jan 2023 19:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167303348745.5035.11434665808527516609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d1d048d73af4089041236b9218fb893fa87da986e8592db58710358d2ea26fc
Date: Fri, 06 Jan 2023 19:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673033487
