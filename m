Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8625124
	for <ddprobe@lists.linux.dev>; Sat, 19 Feb 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645258585;
	h=To:Subject:From:Message-Id:Date;
	bh=isbrhb/PAoQ65lZwgA9R6Ir0IaAYpHA1gq1gcj7ttso=;
	b=TrPpZHk1TWsbAPr/Ikxef9hOKDfpROvreIZPXIezM64YvxCXTYqZwiOdrQkrcOJC
	MszYC1yhvmG/94/SQa3IkVkkmA1Fr8FGq6cH0HzPnVvMSDX6urfZL1c7SLiMNfzY4Oe
	5HyqanF8SyXRfmZ3itADTR+PsdUT6Vyw3Ctgo5aM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645258585;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=isbrhb/PAoQ65lZwgA9R6Ir0IaAYpHA1gq1gcj7ttso=;
	b=d/wLRgoSW63XLup+KBwxAWeCfDmmWutiGnrAR+O89jVpOuCnLts4NrBtG/VNWdvg
	T7iJslJq0OxglpHV9Bta1zoHaV53SqJvKFQlK6EweAioK09icZxota9y8E4At8m5EUj
	ov17Dz8GgW07KDQvwkf1r8UjXPxti1naVb+GVFCU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f110db2e8-6a8381b8-7a8d-47c1-ad59-8a28df9a53ac-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9baf78a0d64d9e43931a1f34495604f3aa5bda8377267e20dc9be087634b9941
Date: Sat, 19 Feb 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.19-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645258584
