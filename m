Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7209B36C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 07:51:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648626718;
	h=To:Subject:From:Message-Id:Date;
	bh=sz3kWlXrM8aZY3xUnfH9SG0pMh6QDl9BgrdVXjHO6Qs=;
	b=KHmq2+3Ax3WpT+7PrGXMYGqUULZwlhNMb6A4s8Kzz3AdTKB1xbgn2caVOaUHqyLd
	rgPTLEfgQbDR1vBCKtE5x5OHPb2riPmO/JQ7thSjwHoAlXWroAgfMcHils79lkPADiO
	nkmFlMnapVxYY55eKl9ohE6MWyCwtYovDV96+Jx8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648626718;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sz3kWlXrM8aZY3xUnfH9SG0pMh6QDl9BgrdVXjHO6Qs=;
	b=fGFcovQebxyH3S8bcaDYcmAOZfQsG3nVZhcJBElwdxQSJ70qv2TAdTWjsikRr0ua
	8C0nNGIY+vRf5A9SruYgIyHpdk5bW1q31J7mw/CVBYjSsaXwMbQQkj5v0q69OcHZC3W
	uAjDYKMRJM7YkTCzmY/hL9Zjdk4rNd9Gmrp2L5lw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fd9cf5661-36315d63-aa5f-44dc-a559-832616d9ca0d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c9b7f1fd96ceb6e12e33e31fec3cd4ec47c93ba0ef975c7c211505f33497980a
Date: Wed, 30 Mar 2022 07:51:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648626718
