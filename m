Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7F1360
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 18:46:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645728386;
	h=To:Subject:From:Message-Id:Date;
	bh=4aQzStWVT/dkLxAB5Og8sbviDmyhbzd8F/aiz/CHgCw=;
	b=fcfx15bJCiKjiY8XLQoylhuazMpuwxXvkjLJC6is44y3C6XS24xClNXwbPRZVjla
	wZ0BJgS5AO2Az8fVLB+D14X4H/gMYKpLO69j618Bmiq7b4rDD6UWr0PFpGDq5fCv/va
	92vYyALzudNueDAD76cGub2pfcvyHQS/cci+iN4I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645728386;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4aQzStWVT/dkLxAB5Og8sbviDmyhbzd8F/aiz/CHgCw=;
	b=l9DV82Im8EFSeUii5vdBMCO3iMB4pvQS83JepS61WmIQHQOK3U95j5mkSMnMMvs5
	M69pGrGxaWVx/Xoswu+myOWr64mIJwlgTckwPtT850wfyxLjN1Q0OueMDw6JyYO5qVi
	i2XN/ECct640vo+nigAsL0s4+YV9owOa+oigVuKQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2d0e46ec-6cb013bb-516a-42bd-846f-c3c72de9c5e9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 42cd7e661ace0cc9a5be9f07dd7df619256bf865a623687bb45139f524e6261c
Date: Thu, 24 Feb 2022 18:46:26 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645728384
