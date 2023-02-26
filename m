Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 400AA1873
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 10:26:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F15CDC433D2
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 10:26:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677407166;
	bh=3jLVqJKfVIEHbB65EDcaaW6mMsvMFi5v5L7zkQHd+hE=;
	h=To:Subject:From:Date:From;
	b=FXOYbgk1Q50v+BA5zt2fWcksAjqZS0weGtN7FSld/P8IBE7zXZb7/TrnJr7hGMVer
	 b4/mNzyTwaEd8j29OcrzjexyPd0xU63SKj36NiOd1/ihUoC2LhUKZPQtnrnbdap7/c
	 UNsHobUPA1mLdWn5rt1PRRmC77xxPvLWA8mHujW/BgbyRugRIRi0qtDOHqToCpmZnv
	 Dlq3BKwqglF0K+7bpjw18qUsIGDcclTWtNAsVH/cLl5BgVIPtyZy+UuNWF6IlyAi0g
	 tKiKsWRuUDFokfXi+Xd5xrAawXFcx3ikqS5IB0HWbS3B4M4Ypxv9nltW8OssIRzjob
	 7CISD2CCg6p8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFF6AC64ED6
	for <ddprobe@lists.linux.dev>; Sun, 26 Feb 2023 10:26:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167740716584.30782.13905207726738428689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06d6faff7b5c69a34a1b263b68d50c07e7ab0251c5f50567504e6e98d91ad9ee
Date: Sun, 26 Feb 2023 10:26:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677407165
