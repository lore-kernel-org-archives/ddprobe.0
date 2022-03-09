Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BD5F7B
	for <ddprobe@lists.linux.dev>; Wed,  9 Mar 2022 00:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646784685;
	h=To:Subject:From:Message-Id:Date;
	bh=LinoUOgHJG8ndQGLkyUUxhEAgqvqF9XcCce3iZQeWxE=;
	b=HPmB5TeCH5IkG/3veabv+bq5KlKA3+uG98CJcfCzajok1ip5fEHLXi9s99JJpJv5
	qhCCMARWx2giu6Lzx0fhLvQAQz0rLfExTiRmxTZtOdXkdD3PjqKefkwzLgSAFp6ASe7
	+mqtVm3jrrPl5BnZAhqe6/zT0KB8jYxECn/wdW30=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646784685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=LinoUOgHJG8ndQGLkyUUxhEAgqvqF9XcCce3iZQeWxE=;
	b=EDdEVMX68o5gh71gv3lHxv7X7e6Popzz+c89DASy0mnzETKYarBxkVT6uAVgs4kr
	8cFKckhRs+k4mF5aCqkub1WxGq2g64lRVb+/rgCOi22perPzYBABM51fKQY2mWQe9ym
	CKSWDHIXDQpW6YruVFiVmJSxlFS4ys/83yfILh8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6c0422da-ddc3d897-6aab-433d-ab04-52b29c4bec7d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 32de95b743021c1bd13014ced7336e0f479000b655dba8fe86ecc3e6cb40f783
Date: Wed, 9 Mar 2022 00:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.09-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646784684
