Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D06533686
	for <ddprobe@lists.linux.dev>; Sat, 26 Feb 2022 04:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645848385;
	h=To:Subject:From:Message-Id:Date;
	bh=ip+WDBgtlJkshmK2069pvSIoOG1rk8MmVIw/ZyYqqqo=;
	b=f/amRgQZhftrAGX8KWzl22dMq3dor3w5j6RxwFgTduHPqD4OXGzp4r+26WhTsQ5R
	bmwFe8fuhyXEV4olw+M+dfY6mjwayk93e0lOaqBN0usPh2vty/h3MMRVCO4AWShqtY3
	NGsskH3EUoyNbPAtzcX592lpD4DVt42vyXTq+Dgs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645848385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ip+WDBgtlJkshmK2069pvSIoOG1rk8MmVIw/ZyYqqqo=;
	b=GSnRQDdS2SV0B/oaZgyLH79IgBJcSurQhuRs66Kx73GcCSM3L6eHxhUoyfZeotkN
	uDOIjDj88tc/u5PXrE9ScfkA3dYqXPY6DwtdE5JqHQMDudoMnKD2x69y+L5ENlV14aU
	Js9qTA35ePNhHH02g7ZvoiLIkP0f0ox2okyXapyk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f34355526-b1b7ec3d-de56-466d-94de-08b8d9847588-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 436a751d1beed0a964eaf333e6ec992227c276755a5ca64657257fa0730a86d9
Date: Sat, 26 Feb 2022 04:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.26-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645848384
