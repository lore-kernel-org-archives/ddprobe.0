Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DFDB66A1
	for <ddprobe@lists.linux.dev>; Tue, 22 Feb 2022 16:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645546885;
	h=To:Subject:From:Message-Id:Date;
	bh=qr2JtGQKydGbrmk0p5xV0gEUHEAfTMqzEBaWGwR5kdw=;
	b=MXvVvaGoa1wtbTkkyLXjBr31j6SrFes2rBDtF5GuBq+BmEAyTrQ0lAU+GCqubXZM
	6JMJHrI7ibsIPA9M2llbRwuxaFXKiVA+GZljgzSAxXtXeE2VEOEtRSog+k4PhVZ/sp4
	JIhh72xYzm1p6cVEWtHqHwSJZH25TmnA8z+zOi8c=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645546885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=qr2JtGQKydGbrmk0p5xV0gEUHEAfTMqzEBaWGwR5kdw=;
	b=PChW2p+7B3v0p/dQIghB7NFOnPan9ZlFXEwGQUmZ85Hf+J59A+77kY7P8tdA3Gie
	wSccOkIj6SPxHrhd8syF52HKU+PkRQ7a1CJJZkdFQ2bo0LWJQUcaXqLii8RJptAHJ5Z
	xHhsXS+LlCiu3Tql+S8RTBPM628s9yLXWuKbBQYI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f223ccf7c-1f4616dd-827c-46dc-90bc-619969ac7d86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2f0eca0aab94ba82888d0b6a167c3f1c1212b2fc0a8429b1e6c135995afa090
Date: Tue, 22 Feb 2022 16:21:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645546884
