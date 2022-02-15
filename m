Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 758FA116E
	for <ddprobe@lists.linux.dev>; Tue, 15 Feb 2022 05:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644901284;
	h=To:Subject:From:Message-Id:Date;
	bh=rmd0hgjoZ6sPQIbAKUQO8B544x8YNSXX5Czfz0fIrLA=;
	b=L3PL2WOpT5qdr4JNM69il22asH6Ml/G76qEgwfCJVxUW4orVrv/E21MBowmwmuju
	BCCpNQgi3b7MMgoS62FBVBnVve1a0aBQYne7JYhfpfmWgrOIWf+GYU+17/yhWYy1h2L
	M2CnDPx2He2M7amBC2GFr/33QilftTqn7K5ZKgNY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644901284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rmd0hgjoZ6sPQIbAKUQO8B544x8YNSXX5Czfz0fIrLA=;
	b=CmyUpwaljMyetwdvrvEdDiqaPq/a29BvhdbwPve9girw6AQM49baOqPWvP/fazhN
	3xIVEjSoJs77lyMJ/bV3J0HN9rwroNlXddGAeSuR3L+e7mjRWsDlIhcwADBS13GT7lg
	l3WruAXU1XA1lUZdoARmhiJtNm2BPWrrldGsm0vE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017efbc1bbc5-8e99ccf9-ccfd-42dc-8cb6-0efe26105847-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6cb7e4e8028911f8d3f6241f820faed72cedfb7cccdc0ac3ca5d39b0d37806f3
Date: Tue, 15 Feb 2022 05:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644901284
