Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 821C47C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 11:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645009885;
	h=To:Subject:From:Message-Id:Date;
	bh=syY+ezvsn5Lt/YBANcSGAKN941p4BYS9oVpg00VC+18=;
	b=NSTn9C9TjccTncs5JiIlXBsEiF5JeRIZh0WJl5qymYvV761q+9GHR1TikJtuRODt
	Y0TBGe6jJGMZXBDPyetMJGcYR85hmKz6b3K0rR5Ce9F+ydtAalxoT8GvNFjnsQSVHQP
	z10HX/P5iIKjrcwc38Xak+NMIgSkAZCcsM/kymuU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645009885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=syY+ezvsn5Lt/YBANcSGAKN941p4BYS9oVpg00VC+18=;
	b=IyjAoYvZd6LaIliy24qNTBhBS9AmFdc2OEuVzZs79opFyyCSRXdnkOTmdtZ3E+Xu
	vWu4IoMgCumDQn0UDg2kZTBZROz5Xv5iLBktjIb6QoSLq2VfK8W0I+vE+/m8kVi9oWC
	faiHtVtOxBimxOHTZqQPFAm/kXevSA3u+U2kd6d4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f023ad646-03fd6c41-867d-438a-933a-11a0404868dc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 71e3d5992f5c4f475d6c2bdc0a0cddf535e04791aa31219cd4ce5431a137e4da
Date: Wed, 16 Feb 2022 11:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645009884
