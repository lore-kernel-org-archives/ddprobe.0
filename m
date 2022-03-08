Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A46E84AA8
	for <ddprobe@lists.linux.dev>; Tue,  8 Mar 2022 17:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646761284;
	h=To:Subject:From:Message-Id:Date;
	bh=MoNeaUG3xww3/685qJPIitWA+ikNFyTEmWBaf/OQvQA=;
	b=bxLeAo3appPUcjoJVe+WntxhHdeP6+l+wZfzkrMAyyDFTJec2Upi6HAVSeHejUoc
	XB6/yx95DLWluWjqjzG8XcOwYuepxi56AqRrjU/qT6ULYRLFr6ipKFtSEXdJ/rmbJCy
	MeRdN6CNFNWUkgCe/bmH+oubn2brxACOA3WJq3mw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646761284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=MoNeaUG3xww3/685qJPIitWA+ikNFyTEmWBaf/OQvQA=;
	b=PB6FrzK5kLoLdnfJhEUuYlXB8Dp3eq/7qbx4uvYjjafaRKDWduNRPr9AmulWqOMz
	GWMGn/ZrJzc83hAGFdxvnOR8IOkd4yRDWM06PkkmS9lSjEiXCn33gzLPNwSs+xwbLst
	cd7lE/3yi8YwupnTC2CGWccLGw/6LSN1u/Tw6gus=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6a9f14b6-d9ee95b5-0231-4185-b76e-ba904be2f8b3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 25bb66781c0f8f7dc9fd49f0aef381d99ecc5a1f492746c403c06f8ec3d31649
Date: Tue, 8 Mar 2022 17:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.08-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646761284
