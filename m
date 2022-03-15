Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9394A23B5
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 15:51:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647359484;
	h=To:Subject:From:Message-Id:Date;
	bh=guiA4/p0k5tOOTUnFjS6H1CD/w0nzmY5ibOhh1HdJxE=;
	b=A5RpQ7/XZ3HTXmnndmEkiT5uqQlOG5QotZvgClwQREqh+5VDzu6ys22nKwmwWXUl
	1RzZXlaJkT36jBetAXsxVE9Ev7Bt3YZlnrMul9a0vQiOB7bPQ0TTtYp0x/33cUhiDtz
	rt5Ay046GZWFDWwvUlzvCCDBeBNqESLl1XzaR6d8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647359484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=guiA4/p0k5tOOTUnFjS6H1CD/w0nzmY5ibOhh1HdJxE=;
	b=kK6/cSZmyHcXnD7AcSe9yUHgUxenMvyuS1DGW15eC+9dKwpjvuHxv4G0SALGcPTf
	OSEN9IhyyEae1ioprWcO09xc3co406xQKY3+lSNZseRZON4N0FWkUMUCfK3lEF9uv1L
	LnvRdiG0YmvasfP75fMbFkM+q1Ab18hX08Phkhxg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8e46e343-44f274de-5c8f-4478-b3bb-fef45f8084fc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f5dd93da2c630501a547d8a97c0978680d1750ed4248516e6b1b44a3dbbd9fc1
Date: Tue, 15 Mar 2022 15:51:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647359484
