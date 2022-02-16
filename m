Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5353C1B69
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 07:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644996984;
	h=To:Subject:From:Message-Id:Date;
	bh=ElQ4MCFbpjTxpCxwx/N9uY14dm9e4diPXogwIUFc8xg=;
	b=h48qOIpJA/J+0g58O02eurUEQccp7vYGQPpFbCoBdEGZkv6K0bafX1mVfd2cOti5
	oncnA5mpCh99oRr8OYvChLoHygVM4gXEF8bPxwgirWPjP486PdPWCZ4wSPJYvzKLJsK
	1edBj/vZ2cdOzHXgIz/Y1Cx0evIRw5GtDYkwfe/Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644996984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ElQ4MCFbpjTxpCxwx/N9uY14dm9e4diPXogwIUFc8xg=;
	b=UpayAuOgXm4OZtI7sZam6k+LwS9dvxUQUWKUJ9TR2cg/BKY1g2rmR/Tq4M16Zahs
	bB2R4HOb+uDBs2Kc0z6zJpEZfZQkM6F4Dk/d+65v0nucwOWFL//xK/Zy38kcImjHVPQ
	wvANxADI9qCybz/kKaJ61Uy0TFOqLyxRGYAkhY8M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0175ff94-467f733f-2699-4fd9-abf0-daca7bc5b901-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cd31506c9221cdade6326abae9b580e04c77e9de6ee98fa9f5b0a790cfd7c993
Date: Wed, 16 Feb 2022 07:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644996984
