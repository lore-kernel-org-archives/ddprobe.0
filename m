Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D62020F7
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 05:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651643998;
	h=To:Subject:From:Message-Id:Date;
	bh=sTtG7JGuj8FgFTmH7LZ/hqvd4DokJplvuBcxBlxsWnw=;
	b=i8GVUNC5WYGDjVKqtYXoro9lBRimO0mZUv+PjQcedg6wTAGGIhjd6PWjKKbg9rvG
	l8hokjCSGwfEOCUpvVruXvgmGV4Y8pHeP0VytQ39B93ReAzySOG441DMnUlbYYbywaA
	1NnWgt5tuZWESLgXbu/JHt7AdFHu+5QbeerNuGSU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651643998;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sTtG7JGuj8FgFTmH7LZ/hqvd4DokJplvuBcxBlxsWnw=;
	b=VLvHlfe5NehKLPVd8/r7RFyouH0pZoQvQfU5XGirA4Ps52SottS6tqYlxNb6tKGX
	brgUUYFIaRGre2rIqZ6uNIzijMmkIlD8q2A3BDuGSgAlSfTO58BqN6Da0xXRIy48WBH
	rg4pHYouQxYQAQqfToLSV7rsv17TVEyH5gRt8bX8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808da7607d-df21b806-1d88-40f6-b89a-a34887fb4868-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f1cbf8cf6ebefa02ec4c917b274ee23d97325f619dc283519a7493109c107533
Date: Wed, 4 May 2022 05:59:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651643998
