Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69E053236
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:07:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8EADC433C7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688807229;
	bh=cz+b+wan2GTV3li1IhqdvAv4/PcH3ymDitr8MZui1fk=;
	h=To:Subject:From:Date:From;
	b=GWopapk3N+Y9d53D3w+RUM7iRVtbTP41VgIiv/7WGisIrTMhyc3tHDkl3GhmN9wSm
	 d6Hrxvh+r82NAYP/DZnQrrYsh+/2EoD/B8MJu6KF+M6oLeWJhy44wR3crUhicruj4G
	 ALAgTWrJQC1ohsfko/6ciRWAgNusZCodhdN72jFUy46U9BzlGQX56N7EKjbWwuOS9j
	 DKHQz7i4fGnxZM7YvhzjZFMsN5AmSzeyQzADz+AQ2N6jeJpToFU4j8mejIi5m28PLL
	 qKcMqgUKQRsKQxayNQgaR5xcYclyGuoExT3bkcD/vrefzESnD7gW+AaZBGSKoskGFk
	 QS5/z2OlUNlfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA159EB64DA
	for <ddprobe@lists.linux.dev>; Sat,  8 Jul 2023 09:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168880722879.20963.9052003486969060040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 349737414715c4e58373f6310f9da9127b6d7bd09c8c93f4d363786631392588
Date: Sat, 08 Jul 2023 09:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688807228
