Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 895A23B53
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 15:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646665884;
	h=To:Subject:From:Message-Id:Date;
	bh=9TU/xdYoxtokWggbRz0FjKGJj8L74UDiV8bFQGcBNF0=;
	b=ejLEzMmekbM1ygqhnUzpnohcTr4eGl3GkWESj9x/20X8jGCIwoyOI2L0shQEkhaF
	0Ij7gawJoQY9OZCu8q1VZi/Jth7wk8TqraG1GuvqIWql0pIBJ0kkQHdePCJA6Q20kUM
	1CJaNlhfD7KHqHOVYeOLIWWTHgyn7aYQerkqMULg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646665884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9TU/xdYoxtokWggbRz0FjKGJj8L74UDiV8bFQGcBNF0=;
	b=mDyCIb38qCvWEzkEbPRuP52tIOmNXdkCo0S32T6WdR6KMNVYhhuCIywYhdbA9Ai/
	EcR9Y5PEvrPlze8Wtq+CQLs35FbMMnaNtrZQC3pcGw9P+UlL9akrR5pRGgsD+97e93A
	fcH+VFEbIb749aJ0sxim5SX+PrXQX2Po3XHW2NKY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f64ef6461-dcbb27e4-590c-45ec-bcac-3dc2094ab4f6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc79f4b0d8a75dc9b5179805425bdef7e9d1504ff99584b54ef9f07ad297a6a1
Date: Mon, 7 Mar 2022 15:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646665884
