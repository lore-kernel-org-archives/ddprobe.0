Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8737E
	for <ddprobe@lists.linux.dev>; Mon, 25 Apr 2022 17:46:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650908818;
	h=To:Subject:From:Message-Id:Date;
	bh=IQlig8rY94+5xvzvJkRfzo1HuUXbRSTAvKDjynQsTQs=;
	b=JItQ6XwmmOQqcjr51nSATZQFE0Va7BledX8yO9WqtU3FsSSn2HwUTy4zXnDek8cr
	DwMYcBz5kgXV04pi+gPgruwj4tX82gDgdyCZs+ikPAs+1//jOAbVSCDYsLGqYR3fUOv
	siqCc3K1MEKWCJAYJtxSfYZhbW0LsJK7wGYdGgrY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650908818;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IQlig8rY94+5xvzvJkRfzo1HuUXbRSTAvKDjynQsTQs=;
	b=a8riRuz5aaStwYHcC0uSQoEh3tHDn4RRnas0eP/S7MxxQJjGFHyW4fp0Aok8IVaB
	v2NxluYVbipIhevFbAmUjRZcWhFejko363xrIbeOxPMYJE+lGnHSCb+r6lcNH4QI9Kc
	4v+1n6UZAAsySUE1MxCCGATb72CpTqpm3B7seTbQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018061d56b5b-d3deb4fb-d2b4-44fd-861e-b3c51855f70a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0976064da9500f92b80b05527e5a0ed03382beab68cc41b9dd414d543d39c40b
Date: Mon, 25 Apr 2022 17:46:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.25-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650908818
