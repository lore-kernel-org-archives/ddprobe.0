Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEEC1FC0
	for <ddprobe@lists.linux.dev>; Thu, 21 Apr 2022 15:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650555178;
	h=To:Subject:From:Message-Id:Date;
	bh=wKGEb5Au826e6xXTS023ogx/1b/FNo0RY0+ugitLKHE=;
	b=W4GmCqPZpWxlWz0aLT0imKJVBkzh5jt/khlMacXypejmnJcqkpTDjP0+2ldOoR32
	XyRLvg0HtbyF8o2kOpBpXjPFrYssrUFIcqtVujqZLPF+cz5J4mkZUQjX4gpU+6nTTFK
	5SZyz5OEvFfPiMaQOGYXSP9hazxmhuOzRYhwS0o8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650555178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wKGEb5Au826e6xXTS023ogx/1b/FNo0RY0+ugitLKHE=;
	b=Z4dRP5TrdIYgoxMNphDFgNi5NyB5nZF4bFy/TFpWXap8MIMTvuWjKIFClmLV1Wrz
	YPzoyBVT/h1WKjPbXkDzSRaHQiII3EeKjPe5sZGjTz81PViR/o4qpH7hmKblWwNLSjR
	juKuaIWDNw5F1FDb9eK+plSa/TQ3rjD2ih+5tKFQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101804cc14d43-c99b31ea-0bf5-42b5-9c96-f963c43bcfd6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f29045e2aa7c123d4cafa5bfb124e4e4e84499fe6b6e7df2f1a48efee33b7737
Date: Thu, 21 Apr 2022 15:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.21-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650555178
