Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689E133E9
	for <ddprobe@lists.linux.dev>; Fri, 11 Mar 2022 14:56:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647010585;
	h=To:Subject:From:Message-Id:Date;
	bh=OwgKTXbytqm8XjFzOgFnT8a/QVInf4YMfAc+Dxj/PZQ=;
	b=hm/+Rx9y5FL+6egsfT5Hbt7TPi205bKE9rx7oOCve6jTUI4J+x3vO8lhgL1d3O6L
	z/jIvnrNSQ2PDyj3WXrSlkJXdXDaanonb40xIXSE28v+4M/jS2OwWkm5bOX7ofMpIyy
	2p7zpXrPkxn0T2q0nwqp3JwxogpXxKofKzJFEw/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647010585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OwgKTXbytqm8XjFzOgFnT8a/QVInf4YMfAc+Dxj/PZQ=;
	b=AMOjAUzjI/stOkRIyLSwHWXWzlBhZtk2oTclymAITHe1TbybckgtIiASghZ9PD4n
	xtG17fsgw3jdlGkWf9xZvg347snLdjgqy0OS/kuO6stPebA4+g2PguT6R49Qz64rBhg
	yaf1/OsLufXTCCUj0/kd+t3qBa+Y2tYvkZXL5moM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f797b18af-340d5b0b-a7f1-4aba-abbd-f3989daa18a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5c97b7244f8f399be67638a558df7f02b3459886ef905f19f38879da31e3c543
Date: Fri, 11 Mar 2022 14:56:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647010584
