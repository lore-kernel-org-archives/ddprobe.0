Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476D55EBF
	for <ddprobe@lists.linux.dev>; Sun, 20 Feb 2022 18:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645382784;
	h=To:Subject:From:Message-Id:Date;
	bh=1ulj0Q57kkuQAlf9s5Ui1sMLANAfk2hHC2WkRWi52Mc=;
	b=K9ko1ZapGnbAVRSVue+sbcXkSAHzfs4RUcGRg9MMZRyqr6XO9MWnKLQTtDtSSbkh
	V5b+EYaqQWBMpObvbMQ/XlzZgRdBO7t/z8OfcG8yvuWqV3txqLsv8QPQbIEfYYpZ3af
	Tg+o3pLqtbfAvdkmj3IcZUsVMZnzO/fOTjfvW2vc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645382784;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=1ulj0Q57kkuQAlf9s5Ui1sMLANAfk2hHC2WkRWi52Mc=;
	b=iyz6KsFR+NmNd0LzddjE/pDUIElSvODCx0IhXN3gG2YfW8L48RHFfPvkt3XxsGeg
	huiCtuRh62o/iaP1jfDDEAUYOGlSPE9LRo5TSQQhS/6IjEn79QFfTIlOVavWFP8blBJ
	BEWodmnvIc66iIaTT8AZHvIS5T5zNpLFGw1rceAQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f1874d700-5bd957dc-a6a6-4249-9c06-b1c87ce77039-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bad814562a7e1c606343b24d9ff6e2a21e38a3f05226e59863ad1a8630ecf64b
Date: Sun, 20 Feb 2022 18:46:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645382784
