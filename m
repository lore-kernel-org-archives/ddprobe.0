Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 875FA7A
	for <ddprobe@lists.linux.dev>; Fri,  4 Mar 2022 06:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646374584;
	h=To:Subject:From:Message-Id:Date;
	bh=eP7ACCXWQ9rIBj1LQtpRtePA/Vwmvx9Z1/g4k938V0w=;
	b=CgS7AOz0O9bweAcgpWWK99tw1yNwQjskKXxjOhZJi9w8wb4a8IbGNAQWICKcxhOR
	4jYgMKi0n7tXQ14rdRR+1cTM1MNlmlyfSvIACQq8pGWEwQxErn5sRtUPNQ9hyzbhrEa
	KWpvqhDU1w2vOUMOI9cXglRL1MmRGPd7kw6udtEA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646374584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eP7ACCXWQ9rIBj1LQtpRtePA/Vwmvx9Z1/g4k938V0w=;
	b=KdTVtSbHYgHjPM3aQ8Fbp1lwn+YqKNt8PqJep6rZm3BBEFrAtxP7v76NQF4ZRC2I
	btTpCqlT28WkagO8uKYlvxLpwVfnV5VKr70WyigmG1ZSIBNAIT5fAvAcnAwlzhY/qC1
	Hk8ir/+5KTnyLEptPTL01LqDa01EOyfE4JJIkf44=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f539281a1-d4aa161c-864c-401b-be8b-96ea2d13a139-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 14f4b5d69d5e9c11520d54057889a1baa3af02c56ed03fb485317e8d51d86585
Date: Fri, 4 Mar 2022 06:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.04-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646374584
