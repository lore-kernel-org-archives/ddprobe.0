Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D464E5CA9
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646950285;
	h=To:Subject:From:Message-Id:Date;
	bh=91HiFn3FGYMY2Xa+xlXDhO5aTCLAM4Scmbs1/bDgSsg=;
	b=RnhaZHqFS/llHbMf8Alw1EhlptdA+5bIoMPqqECN99isDZ2RCmE7U9JiNG04y4az
	8B7yUxqNI7LKCdSwH0lXuOXDnIfiZ44LJVIppfXAZs8GKPPKHCmq3hyfGQHMK4E/a9A
	UZ6ipRs2lh/KAx0HkqK1sKkhWybSnqsfsHIlwVuY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646950285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=91HiFn3FGYMY2Xa+xlXDhO5aTCLAM4Scmbs1/bDgSsg=;
	b=OVkXJjnTAvvLGNJ58CVGZcJQuPlmRzthB8KM7OrTc0zDVs4YyQDvpdf8xunrkrIG
	p26aJ62x6v98OvRwjbyVppxyMnr5adlU5RIxaGgxUovPQmhHLjQ9Zjbn03O/XchmmRa
	ZHZKymtB8wVCWaaUpJ2zJEF70Wm5MbNYr0jvD8O4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f75e2fe2e-b07e6933-d9e9-4a7c-8bec-890f5c3b8d03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99d6b5c3be84e7a7d853feb665653a2e4b1510d85c0bf66c37968adaf9caa906
Date: Thu, 10 Mar 2022 22:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646950284
