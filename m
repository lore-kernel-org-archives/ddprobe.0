Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A77654352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 14:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647525985;
	h=To:Subject:From:Message-Id:Date;
	bh=Qn1kl8GQHjiHRroMIQOhX5kaYpXFIE4H/7XFS+jJT9Q=;
	b=CQiZsgO3ekeOJon1KIstlpj5jm9tyGf11cuQMxtP8d1h3TeNoJLWc5CiQRxbQ5k+
	0K7RAJlVfIinKN8MjQ3qqqlVe8Db+T3KLYD+0TvPmCTvJXAqDofdEvr1oRLUKGY/loK
	ETGpvMQfXrZzjyMFqJQbkRKy8mI/FxLH0M5vXA0I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647525985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Qn1kl8GQHjiHRroMIQOhX5kaYpXFIE4H/7XFS+jJT9Q=;
	b=ko7FFLxKb/X1qj8f82fkUvdiKx88G53tCIVgeIV/QlbDv1ocFo+TxKuMKhzNIUvv
	WURPYH1utgS0qnO4IO/r66eSvY+WhG2KO0yfvcn8zj1hoTBw2OZ6opWkWWRjQRcYOXB
	07oSVdVFMx07quwcnpgf9bLmgicdK4pONvMKtOro=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f98337a49-b1335358-711d-4856-8088-df71a88a7082-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b91ee2c9b73bb997174441b7d2b27f19cfe68881d586855fcd1680f2bc094dc4
Date: Thu, 17 Mar 2022 14:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647525984
