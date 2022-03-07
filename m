Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 717C9367A
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 03:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646624484;
	h=To:Subject:From:Message-Id:Date;
	bh=Syxalm/WPPhEMMndSGxxP+aE2aaYeICvevu2+TuOob4=;
	b=IFyeeklgxBvFRbFE3J853KLKuMNfJtuFDo6NwU/zj4zs8EIMjM0eBFwXCx0IptrR
	n3kGBG9apdMt1CyXcC5YpSdg8uFXJ1j11rTL4iShpxcVW9bDXJGRawlMxMM2B78cl9B
	jGliojkFLSCiVN+gl6ED+Bz+JaCRj5ZIJdMbp7Do=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646624484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Syxalm/WPPhEMMndSGxxP+aE2aaYeICvevu2+TuOob4=;
	b=BtIGUz6Ba+Ob4keARH/KKLHFjUSWfDxJOYFOM0XJh2CF7dqi1mGZCK1IKgRXdvR0
	oq89KkE4YkHVJtTwUZomQJek15KzvFccY87XMIXIyoqC1rUQCkIWc485If9q9McqYkg
	Ihl/OJxmIMXk/KyFbrMYvXc2RKB+5P/1VbcBseLg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6277adbd-a6a5104e-0c30-425f-a923-2400c07f6e6f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bb23f3b5e2fafa5cc4c673bc6e1f4ac60fcdc777700cef9d096b8e99f422112
Date: Mon, 7 Mar 2022 03:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646624484
