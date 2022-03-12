Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86AC22F26
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 17:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647107485;
	h=To:Subject:From:Message-Id:Date;
	bh=JxKS17fooNiwOZwMqzZRzgiznffW2/HwT/ZiIc29Md0=;
	b=QIAVUlWRLS+8ay3U+O8BVqYkYd6UbvJLFl/oztfq0pyk3xzNK/qiIOQEXQIxcZ7j
	BK3tb2sy7KlE833/jZrJuWIpHHQmB7FnUkjzVafXvZ3mwC3tx93J6Mdo37aqDyE3ZQu
	BIg6oDV5HQnKMKJjs9B8Zu4xKypJFz7Nck7e2r8M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647107485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=JxKS17fooNiwOZwMqzZRzgiznffW2/HwT/ZiIc29Md0=;
	b=JqivXlzmnDo16oeX9w5TTAl2Kcpf5rPwQOfjAT7450bvEhlUsNkyZuOWo08S9lnN
	XvKfAJKEJssb5B8Tyd6cjyWzplFbeMAi2F6qw34EkWAHKwANvsyBs2vVvn7P9I985eU
	IHWpO27Wd6+c3D5WaPWKSEbE1PU9FK+pHlcxsKvQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f41ac47-cf858be5-f392-4f04-a509-05fe2b72f68d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af29ddb173348d05e9b872cd107158db2c336597b724da20184b839c5df708d8
Date: Sat, 12 Mar 2022 17:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647107484
