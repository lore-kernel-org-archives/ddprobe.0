Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9100C7A
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 16:33:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654792379;
	h=To:Subject:From:Message-Id:Date;
	bh=N33TQcE1rVJJqMbufyN7tpMC8aC0RLD73r/P/9LcuD0=;
	b=YGq8v7fTa1wo14vjmDlatYDzSo6k2JmDXo+PYheNZxatGI63fx20WiOD9OJV24Zx
	H+TEdeyYPSUO8rpU8wV4hhMMp8JHgCY8dWf4uURchYiAebo/cfXQjycJN1s9OCEq7P/
	/+xgHfXvzxSS0Se9pOel3CCzfinlfWKPPxdj/jms=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654792379;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=N33TQcE1rVJJqMbufyN7tpMC8aC0RLD73r/P/9LcuD0=;
	b=Q7+UcGBdb7WPiiAJdMBqsdrU338wNAAv5FuTmmbdKExxezKa7mHxQ38h3sDe7be5
	b8SsGJKjHejsl6eb0So6G2jzAxi9HMz5a7+QzVW0q+p3v1Zbq/3MFbYjeMPCImEca+p
	ayZ25V5PrQ7IJsKhCm8RCINDu9qBD58aeucF63B8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181494fdb98-474d19ab-c574-4852-a8bb-c840ed8cf966-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eaea34d986717fc6b6695705672536f31bc67a94cb5bd6a62d747444492e1597
Date: Thu, 9 Jun 2022 16:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654792379
