Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C7987B
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 01:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649984758;
	h=To:Subject:From:Message-Id:Date;
	bh=m9K/7a9hxDH5vGPs5Wb1fOVNktK26tkAKm+vgR0aT6I=;
	b=fa2qx5Q3uSx0DATz+usXD23M+1xN7rAAWyz8dsxhNyciHvrgyCzpscYa0Z6VyWH7
	8NvwZIJcb45J8N67RnFCTWctgvYAou136DozAZHm7SiuCO8f0jGcDsBIdt0JCMwfiJd
	KZjAplz11b0q5iMgLdOpyfsxGuhHBk8vrWfJGnBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649984758;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=m9K/7a9hxDH5vGPs5Wb1fOVNktK26tkAKm+vgR0aT6I=;
	b=FgskRuButePEl3bzN145VpEEkbp0mLkQ8dr/mj0cMfuVG31ePAfGvpyoACgt2TyH
	g/k0XNh++65Gp1gH4BhJcF4I7r0cLfRWZny3AYk4uzkuquRISMl4V07oBML8z8oAsG1
	EfNNFVavcbTr4//34e0ZOGdiZt5bcaaVNN2G49uY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ac1620a-585492b4-7ccd-4523-8ad2-5f99f6671d09-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 72b8c15df7ad34bb34916eeefb2c63ba23085b4b774aab40d0ac081575187e20
Date: Fri, 15 Apr 2022 01:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649984758
