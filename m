Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CA87A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 03:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647054384;
	h=To:Subject:From:Message-Id:Date;
	bh=BlOsaa+1REfH9rmDGTML1QInZv5zgHn73oBGJI6smk0=;
	b=fBFGO5+85j0pHPqR77jrJiu2VXOONdstJxBFkeRnwek5FwIFup295cPiLoKQuP5P
	33P102gx8ZK226stqY/+PzqVGXlM0mFEgZ95WW2aUWHba3T1/gIFfMsA8qklOBQJDC9
	2es8WETyeNyCDucWcMCqXQyyu8dpkvkPcsKFfqSE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647054384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BlOsaa+1REfH9rmDGTML1QInZv5zgHn73oBGJI6smk0=;
	b=G+tuHcu2IjtMwX3Tbe75YC/n0DOsLQNlmLbRluGUtUkinmn9fO5/GeiPd8+DV/qL
	4BbJBxjbHKs2SypfMdikeerxqAmUJ0B2IXX/46e3k2RMqGrcX/qma7FDDLeXQKXPQeB
	IA6USeWRjFiCbR9sXYZRStPhWWkO7SGkhGImgcWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c176e7b-d843779f-2939-4763-a0cf-e40b4bb57df1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9730a03bb405816a3cdcf3c13de7e2d1547efbd45bd2fbd3b678154df7d9dd2
Date: Sat, 12 Mar 2022 03:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647054384
