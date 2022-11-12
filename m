Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03A3AEA4
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 11:00:55 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F88CC433D6
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 11:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668250855;
	bh=Le8Qqdtr54dM8PgPbSEomY7hgM2c2wJVD9sxVPt1z2Y=;
	h=To:Subject:From:Date:From;
	b=BdSw48HaG4AT0MIusWEXtzmQPCEXlUsaqw8GuJyIeBl5RIo7YN5CiwHnr7qrnP0eq
	 FVRqPMFiWIC0D+HtFccoMw6RoA7tzRrAQTDqXkktXrtpLq7aA5Htx8I6wKPXyskl8/
	 40XGzt9Pwsx2OFA1A+tzqXAjGokFFe2FmMxSBi70VuRVDCaNOxB1y5RU1UBo9pRuAn
	 gyrCc3PZBKaphsKfNQ2DfY2iMVrAobP6XFUrtTOgh9+0b1LgGZT5JD7e0aRJh9NIVG
	 VL3bZWXuhNA4uXtOcL5fMVzvNp7lAW7IFpzfIj+RMRXg2iG6SD4BF24LEOAq7VbExK
	 iXABl4fkcn9rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CED3C4332F
	for <ddprobe@lists.linux.dev>; Sat, 12 Nov 2022 11:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166825085441.25328.12480569829719111181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88c5ac8680d6a0808ba96040909a503f18ba0ad523469615018e06f9ba7f0617
Date: Sat, 12 Nov 2022 11:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668250854
