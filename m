Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B5633E5
	for <ddprobe@lists.linux.dev>; Wed, 27 Apr 2022 18:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651085998;
	h=To:Subject:From:Message-Id:Date;
	bh=f/H0dIny25LKrs0ZOLKNyu46KAftnXipdRRUecJ1cAM=;
	b=d4evqvLxXqRV7pZz9KKyN+hBez1ggcpaplnHMMvShgoorxiGMgahkmkNtuhb94t7
	ZekgIza4pVZFpKRRSsqDuSfDu7O0hVoCXkAgMrGSxbtlQSfOlNh+nvZwTajDLPgonUa
	EkVaRYI03Nh3meX5OFNZOBo7ZCMmgE4W1ol+ZIko=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651085998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=f/H0dIny25LKrs0ZOLKNyu46KAftnXipdRRUecJ1cAM=;
	b=GmjTaXkCSksKHWJGuy0gK2+YHdnA6pOZ1xRoNdFLDUlOgR4nuq3AAXA8gQu7BZd3
	0szXh0qtwZiIHDsEkk8448R1ezl/YqLA3tKk3JDtR+zenAum2RHYA2I/XcL9J+dKCac
	38WDxDZwKpGjB2EPiOmwhvyelDA8YqqT/187Xz30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101806c64f90b-25e4d21e-eb76-43f3-bf43-696f2bd10a55-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e49965c16a6bc3c8040ab9de26f7eca20de852a09b9edb00de0f8732ffdd3c5
Date: Wed, 27 Apr 2022 18:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651085998
