Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F09B4296
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647091284;
	h=To:Subject:From:Message-Id:Date;
	bh=N/tUCMZeXdqVuy/jmlbmaSoW4V45OcDA3F1I9uncmwI=;
	b=C1eyadGdKoXnu85ehpcRzyx3Xbca0uuxRznQ/4DYu0SztJJrRebThTmMPf6O+eUC
	7NzPdGTiXIfUAYlfyWhaKGOelxyogHK3r4BwiDW9X9EjFihqGDIMIhakCotDtNTntFa
	uSfDA9yeAs2NCIJZUJZO1CdsCre1N/pMxRRrexP4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647091284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N/tUCMZeXdqVuy/jmlbmaSoW4V45OcDA3F1I9uncmwI=;
	b=c5X7qV9OOIY7N0xNQojZkiE2Os/BpB3tJ4fmM9SguR4k2y+y5c3CvGpWPf1U3DcA
	VEKZF38P++5HlFmCzv/lZtsR4Zs0a92dejspcGS4mKnzWlFrow1I5cGnDDaLdI56lUL
	RvCiImtVMnAF2O5BS7RifDgmfRUW0NNMIDxYahmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7e4a7b29-4eb8228d-6218-47fe-a79c-dbdb13a16790-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e1549e5c2596a2e0df40ec34c1c948074cc014a4a33808b71799b206ee25a443
Date: Sat, 12 Mar 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647091284
