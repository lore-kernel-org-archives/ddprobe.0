Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E73C1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 05:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644989785;
	h=To:Subject:From:Message-Id:Date;
	bh=sQ1saTg+f4mQWhysgV4EKeqEyGik2KzDDl23W0MJqIA=;
	b=RAm6tU9NuI5d/gDud/2YWUkllP38hhzTUxSPcobowl/6rUYkHYsk5Ft54UIe5GWC
	9sM3s5WvzblKZO0AlmwUVgwKQ9EjoDFpyE+IoYPPWwjBhEYsmSLb+ThMrp7mNgHzeMp
	u4+yicqaCu5DSyj1sWigWpSck9s3XMBAthchD/xI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644989785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sQ1saTg+f4mQWhysgV4EKeqEyGik2KzDDl23W0MJqIA=;
	b=bNJqVIlhiBSaBHcvbJDOL7bhFWRO6AqaOMVV+8S10guWoEdKAyBZqWPhIrQR5qhF
	kXjJf8fhwDhHpsJRbyLLlMXWcHwrHXWXo1QL1nkvU1rn32Alq2xuPQC/W3sAbisVFOa
	HqiTGbGQbHNVyzLaGkAt4ROhfq5c2KVCEIzxaGE4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f010822e3-4e6dab36-ba02-4a66-9dfc-289ccbbe55e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49b5b98d23d951cb324f333ce81dc4a88d4f8a069f0e6e59003b5067a468d9b9
Date: Wed, 16 Feb 2022 05:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644989784
