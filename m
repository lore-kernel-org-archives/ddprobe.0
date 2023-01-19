Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5CE46FC1
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 11:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D62AC433EF
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 11:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674128487;
	bh=BJVV38NMHc64EKL4F4KU0Nq5hSa6Zh2XZtANXGCeNcM=;
	h=To:Subject:From:Date:From;
	b=lmSd6TYgpT1K9vJxTwroS2QZZiLOvKtPvvNUHD7HOhH64VWTnDn3Bn3baqqCrndwF
	 Eluy83tCY/Nj+grvpzw7BOTSUGP1vT3jTSGPlRu5uJ1mVbl5WtMrCJSk9/+pYjOOgT
	 LJ7e2G5OiKb4QUKfg/rKLnGvgQLGNB3V/Q4xB7MOZMj5s/WC1TQRnug8Tz2YASKTA/
	 Jgn6gRr7VZk9b3l8jgzO0Bch0HsSjy+EgIbXBIAg9AYHKYT83TID/VY9kcsOJZR0uX
	 lXK6y3Z4Zvq4J39c1UwAjyf04QAfHFqfT7QTP1x8nj1qPrYT9GRGEmHXbCdRw3t2Bs
	 M3g4GXH7Jhb4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F5CEC00A5A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 11:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167412848738.29193.6862143392154403406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76acf9f34bbdf60f1016aa440c6f8f1cbca88e25a3f305ef367d52d8420131d1
Date: Thu, 19 Jan 2023 11:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674128487
