Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460932F5D
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 11:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646305284;
	h=To:Subject:From:Message-Id:Date;
	bh=NlR56AUVitwFnyn+Mp6h5iLJwiWOzGTCEQSDLwl4kWM=;
	b=kaKpOBpV0DWHPJtqb4Q61gxFvC0HNkekPCgQPkSso2QHPzyu9t3huRmANtPY8Ykj
	fhdHK/op/D8Nw/4Pqwj6+cd2MarIqGUbGIVGj6odIpwA8fjarGcVSprYOSEhr3IuBFf
	Mdpbe2HzoIwEv3Q2gb5VNJuY+zLeOZfL9FQAgYEI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646305284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=NlR56AUVitwFnyn+Mp6h5iLJwiWOzGTCEQSDLwl4kWM=;
	b=gyqxGlv9VxJUr45s1W0QViReXAnNAXt+ejbuJ/zOamvLegFK8AF2D5SccCXUndFd
	LGUISaPXqHkEE8zxvYi5OY+Icu7LBzPHVKWGqD3fX8w2bysFb6J1j7Y19OKA0w/fCkz
	Dg7AwG4pbJuCtq36DBpKSBoRuLCq9H5SZPDfZzKs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4f71127d-ce0ca686-33e6-4a23-af4f-176f8e055d2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db853f345b82a5a84c15e1e8d8189e50f8c37e70a4e418a641e51406a0d3522c
Date: Thu, 3 Mar 2022 11:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646305284
