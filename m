Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC4737A
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 03:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647055884;
	h=To:Subject:From:Message-Id:Date;
	bh=4FTeEsJtCuT0xhNCWI91DwE1b5952igO0mKXjwnjiyQ=;
	b=QZNob7trD9Y1WNtrNbjXdO05I37Av3NwDrZUnBOOIhuCN2S/8TeBpKlQC1rU2ysz
	yTDwX6/6JM+VmpiT2tgKyjO7WdVX8UZMJTH5BOHnx35dx29hnDCNR9PCfqLTB28klnd
	0hfGksOTKcUC7sbn8owJMnPRlduaxokgmcbaAKKo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647055884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4FTeEsJtCuT0xhNCWI91DwE1b5952igO0mKXjwnjiyQ=;
	b=JwHYRcq2U4OKnIkGxzl4SSb68YvMZ2kltcHC1yQDyfq+C4yh7UOqBNOLHqyF+a3c
	B85BHPY/INOOBmXGWaHgBPamEJfsXgRbCP5ItbtsN7ZlR5lxit+OLqeoCABbdbTNtKM
	7v+N1uNIys2v5I6bHdGmwAnJEdJ9zAm0lsQXumRI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7c2e51db-8ca5c07c-0e48-4487-8e0f-90c9cdcc61b2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 22d8f4df133cd51b4b131bdac5bb1725339e21d5cf0c971eccb3421316f2c2ea
Date: Sat, 12 Mar 2022 03:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647055884
