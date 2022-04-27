Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7104B7B
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 23:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651103278;
	h=To:Subject:From:Message-Id:Date;
	bh=Wi9GE27xU+/qv9xBaPqVPGXmHgp9Z8DH10wVDmVnV+w=;
	b=Gpi4aXDqxN21psNcY7SikQiqcl1yIic1EP55GgWknEPcz2vPp60PW7BSncizTYoV
	glsfea4p4pVLgFCYb5kwSBu34vCbQuYwsOi+XAjX+jr/9RYsRIaISkFbVMrOrG9fhyG
	R4BxMbzv8SQd2RD2xvYDTR4WgZJlUpwIoVK19K4Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651103278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Wi9GE27xU+/qv9xBaPqVPGXmHgp9Z8DH10wVDmVnV+w=;
	b=Ly7laGWXZpjMn0fPZhZKmihY2mz8BmVBX2jEzta/Xhmms6OHUR2p12wwvphQYpJb
	vy37ZQZcF3jCb2b4odDwmidzNfxF91EzZ0lPKoT7X/gCZFE82bDrIeEoS/SI1vOQr1m
	S8S++e9JS8aG0wTHoLbBZQVa79IUO1HlNrMIyGT0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806d6ca4da-6b4a84e3-759c-4fe8-afa2-c0dca3aec9d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 359a1558ebe37cc11f98c01cf7fd3ceb458ea9ff5eddcc63ba010313b1f079ed
Date: Wed, 27 Apr 2022 23:47:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651103278
