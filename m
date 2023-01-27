Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344383205
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6765C433D2
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674858785;
	bh=3Z56CLXKnvjtuj+z1qJydLMdj2Zwu4TEklYQ4q5TprA=;
	h=To:Subject:From:Date:From;
	b=QVMAlIFi9H9mXpY0axA7YA9tf1vMgS7myddhI8XcKoryra+3XxUJrPAzE1B8H1f/n
	 P5jHRbb6wcFTxx3bYqYBEJVbh+tj5vu/5kgmnngfLLJRxtORS1VuuNf7zwUIvnRGvb
	 SWdgAkPm890xrrb/i3Lw+RcRCe7fA2rchxksN5wcLxGjdTIggpO+p3MCnaErPRgsoz
	 ckabO+mJlXQSvD5BRgKTyJcMBAVcRkhtISVgZkolt7psGqdbUak5kst9CB5fAL3dXu
	 9zrphKyvesjblXyBGQVYCeKJWFYLDF+urYbhXHoke8jU1YsaMHKbYemjlz/Ug78qJJ
	 xMTVT9Mm7mXtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9774C38142
	for <ddprobe@lists.linux.dev>; Fri, 27 Jan 2023 22:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167485878573.22969.5015510879666954592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bba062bb568faf88a78fc7c5fa2d7af619e02fefbc5ea42bff14725585d9d837
Date: Fri, 27 Jan 2023 22:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674858785
