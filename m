Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F2E46450
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 03:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646796085;
	h=To:Subject:From:Message-Id:Date;
	bh=fzOEKvXthIV+qpRYQf96TBWlgRbI/Vdwyrq5oAY4e1M=;
	b=XnXG2DRUgCV1Sr1rI4s129O9CVvjlZpW5n0TGDT+BKZre6ifln2ALkAOU1V7RILz
	aTZWS5p0z5dmMhkxySt+/k0L6rUQxB7KeFdenh/WFGqzkV+Krvj+0mt8BW361DkgWIz
	idXaEFrPojEezUOtkFoTnBAVDEEBFkRAWIZUa0Vg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646796085;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fzOEKvXthIV+qpRYQf96TBWlgRbI/Vdwyrq5oAY4e1M=;
	b=Ugx1l7NryR0jntL5R6laH3lqMIxnPdi8VWO8eCs1wYVAnZ4wi3t7wO5lzlXx82fV
	V0MMYS9ihjnPcJz6MJ+yzYhn9536speO6fMJBry4nLeobpCkKQRUL2f9rFx9BxmYWdM
	N03xC+/6VtZGIxsVMcCF5Pakmgaq11ggYwWF2RHg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6cb21624-85c572ac-49e5-4a77-8a9c-1a582beabbc9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 456ee420413968d90ead351b5957eb83ee861f23c3969ceee5e6fe1b27a46e9a
Date: Wed, 9 Mar 2022 03:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646796084
