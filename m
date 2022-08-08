Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E19B7C
	for <ddprobe@lists.linux.dev>; Mon,  8 Aug 2022 13:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659963652;
	h=To:Subject:From:Message-Id:Date;
	bh=WPnH0wffrgyCblhRf8JAVnfiEGohCUrmR/KReUgFZDQ=;
	b=eBhwzwMcRy8dWNH7TXvthZIFfEw02oV2ULjIFCJHKcoCkK05kXZ0X4gst7dizavX
	PB+U0MItVoMwd13Fwc2KH/eTemJgGkWtpf72tEPvK4PZEiui4PTJKOVlm4kzxIQZpDl
	u5KGUfAHrAsvEeVe9znG8/n2yTsVbyUer+MUM4mc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659963652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WPnH0wffrgyCblhRf8JAVnfiEGohCUrmR/KReUgFZDQ=;
	b=DdE3jOGwKcZluQ/dGS3iT6wifdRcjgJHOLksLJZQQ4dMf1Txuntb3Ch86QPGwjqQ
	jVoIwRSTwG6/fNvgL/SQikJooSg12b00cpoPs8agOAZADqBbEIgXdjID6P11je/U3iG
	LNlqWlYF6ytdbL5vhPzqLtlXp9tWjV2Eb+gtRH9g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101827d8b39e0-f2ec9dc9-17e7-4ea6-bf90-5469b94f075e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9242843bff1d88ebf2b8a98f8c88667a7ff9cd260ca9ffb9b67595bca62189c9
Date: Mon, 8 Aug 2022 13:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.08-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659963652
