Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 811AB7B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645963285;
	h=To:Subject:From:Message-Id:Date;
	bh=hp30VYAXEV1obvAgC235UrTQUmtuMIxy4JVD8XuVCUc=;
	b=O1b7TjUpCZ7SLvOrIv9dVgYfcnRjSsD8v39iyqlnStUttH3wkaAiVlNgYGE+G8K1
	YrX5ko8aXYYSYiMnVHnq5hVqBk6Wj6Odm8cgkWj2hz3Q38tzl+zJRRHGApAHl/W0s5R
	wGvKsy6xhP++6Vxmu8CVbIi2O69ObyuMfqrQmVoQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645963285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hp30VYAXEV1obvAgC235UrTQUmtuMIxy4JVD8XuVCUc=;
	b=ejA3CNoMuPQa8jRcGIT6L3Ev5XYXi9zsECwml4zPhamBi0pfgbulAz8z4mzexOVg
	/qCroDiNRJdnendBlE7x3/19pyIaPSAKjKJHjV69EJ8DmG1AlEnXNpIBXMI7sOzMd+Z
	XjUnXUR5dXpcmV7oto4dsQFYmExWowyHMmX8DPfA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b0e90dd-6b044703-85c2-4fa5-890c-2c4fa5c459fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7386284c39df629c4866accce1accc88aefae68ff025b4c28cc28710a408708
Date: Sun, 27 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645963284
