Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 848B17C
	for <ddprobe@lists.linux.dev>; Wed, 30 Mar 2022 18:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648665298;
	h=To:Subject:From:Message-Id:Date;
	bh=Y/cumJ/7W3KsOkvLFqWysX7e4D6snEQA2zPXe089DB4=;
	b=I2ubQTr9eKJ5MSDwZIFQP/ZUe4eVQZzax8JMU21Pg5vPg1sVms7hX6MTf8So/wu1
	2kE5ck7nXeY88qp6kGI+Jd6kPNyQchLqTIawLf8ycnpTfT1Zi7LIkuYLkg3tnzCCyAd
	iC0cFNkVZf0gD/bGAbDfLEBcFzzZlBPHELhmU7nA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648665298;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Y/cumJ/7W3KsOkvLFqWysX7e4D6snEQA2zPXe089DB4=;
	b=DUBqW4C7D7AdcVLPloaIHt3VqrRV4Uv0M6TLyuC4leXYcCz3uNBJxgI4uKg04G9k
	BvajzSCNfwdU+3mrqCjYJmFW18Jjn2LER18dM2+bNy/FLIF4RAAC3S6aodNTuMtBQ3S
	rCMcb7gcAUmFbTAjBG2wCe/EkMWCqbEjtgdvxA2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fdc1c055f-2d761dd1-7383-4311-97b6-fb1dad8cd9d1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e5e333029d4531f5f7991b5b07b5f7ef3885fe35345b2af58182c43516ac1996
Date: Wed, 30 Mar 2022 18:34:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.30-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648665298
