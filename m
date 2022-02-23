Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD407EC
	for <ddprobe@lists.linux.dev>; Wed, 23 Feb 2022 04:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645589785;
	h=To:Subject:From:Message-Id:Date;
	bh=4R7u/Nrtad/VxWQavOfRM0GL7GXZg7QtVQQLm3IawCs=;
	b=B7Rg8v6pcAaeQ4Wu6zuDcqZ06KrH0pTdUIUKAWOPSL/iIWOa0k0GkKXtpUscIsTg
	EHcKAOwLxQjqjHsucydT/IMqpLbm70qrKHj2aF26ZtuqNGn4b8L5xhXkTN3XiQ6qeGY
	ZNIrETxf6bjqVJlMG4jNGu6Mh8QXLVa/XM8GE+AE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645589785;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=4R7u/Nrtad/VxWQavOfRM0GL7GXZg7QtVQQLm3IawCs=;
	b=bDWS+MEd+2n8H/hWt2ckKlpJSqOg8xZuoAnBfRg3HBT8WQ68yqQ4SxIXP3RlQLoj
	OMw+ysg3/8+R3cSEW9okvbznZhjdCxhFFv+TqFG3QZvwzCKgD1W+4gkRfKtEXeMACSS
	k7I4NOCCJvReOWGiC/8RgyafJA5RFtF7cC3vnxFE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f24cb68c4-3b992b47-efbe-4dcc-98d8-e41d15634d9c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d440d32ef3a3b45eaeb271582c69af62c82077267ceb97ea1e3c245bb164d893
Date: Wed, 23 Feb 2022 04:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.23-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645589784
