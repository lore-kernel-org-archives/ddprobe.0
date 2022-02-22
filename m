Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84EB5364
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 05:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645506385;
	h=To:Subject:From:Message-Id:Date;
	bh=DqSNnOxEEbPqGJpcEARxnWlO19tH5TDX9q1KuEXpVSQ=;
	b=Pu0M/xEFIOrbxEVEgsSeadgBfIv5zQkyKK2sZXwOg+nZECGauKD3QeIZoTBN9eBU
	ju0s56T7wUEmbxkAx5ahoU8SBnf9KsmGw5JK+zG9jFi8Qof/8ICZnV7B1fk5hrc2rpH
	tmBgBLmxv9mIf0Nln4X+yXfd1unz9568ucdV1Nu4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645506385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DqSNnOxEEbPqGJpcEARxnWlO19tH5TDX9q1KuEXpVSQ=;
	b=DuTh9koifTtiId4BnbSpd3nlUS8jOTfohzfZ5t7tUdtkipO35mKrVWfLKXX2zIzG
	kgqAIUj4V2HuuQOiPYUzx4Yu0l9z1tnzs9U9YeiRzKSFdoI+LRILmpWdvrJeTJXQ5is
	dDF94oIZ4bHdnBloiqi2i5DunbfZy1N7tvoBBwYA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1fd2d37a-154dab80-aefd-4b7a-b651-0247e9b3f108-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: aee8f7a9e26dc9da85cbe182c609b01559b5d7084ab356ce08a28c128bb29548
Date: Tue, 22 Feb 2022 05:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645506384
