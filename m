Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8928642
	for <ddprobe@lists.linux.dev>; Sun, 13 Feb 2022 23:00:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644793218;
	h=To:Subject:From:Message-Id:Date;
	bh=nkF1/U37E1RKzAnh2kr8vn2HVjFqjQ92yWCuA4L16/c=;
	b=OCVtq6LTXY+wztE1Wa3Ea7TJr9nnviaHCtwJ5A0JdUYm9r9DOTNEo5oVTfzs9bJJ
	sUt3rgkdIc5LOsz64EcRX8hTInf50Lxuu/52OPGEXYlLve0HzMDAmmd4Atwd6Bgfs6t
	b1Hze6YTn40LHPfe+sHqaR0PmucHGitktKpZ5vGE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644793218;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nkF1/U37E1RKzAnh2kr8vn2HVjFqjQ92yWCuA4L16/c=;
	b=URVmcdtqvq/9g+3zCwyCsu0ILJZ0ahq2yyjxL7s+1XnfECl1swna1ZuvXiyzRR+7
	TWyKs+jZ9pVr9YZ8M5gn1g152WHyMQEtGC1+x7MpSlatoAT6PnUNmrtec6zU4n3+lfd
	wOat2x5qp/WF23AKw/VTod8bjBzdlPg25HBdsCWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef550c648-f3eb49b9-fb7d-49eb-8da7-14c313b8b422-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1f13dc6c22b1a6808e4b787738feb7fc894d84b0b97ab9b7b589ada7983d3e3e
Date: Sun, 13 Feb 2022 23:00:18 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.13-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644793218
