Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2DE32F3A
	for <ddprobe@lists.linux.dev>; Thu, 14 Apr 2022 17:27:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649957278;
	h=To:Subject:From:Message-Id:Date;
	bh=IYNMyN2GSxvK0W0rnkPKMz6pW7NE8APNNHQ7VN4FsE8=;
	b=LU4iWNdmvXYl8u6jSV+ncHDSHNi/z1tz1tgUDg9C37OKLylQKqa3FoVP5mKDvr+z
	eLpFBUpEfQeZ0yrbGKJfhUBqgcGAgXDO0L8egBl8EsZ84D9VUP5PXF1wWCO3hVTWMIi
	ZaYNKmlgODCY2QO9Qfpz6N8/EuHHZEydOzrnakBE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649957278;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IYNMyN2GSxvK0W0rnkPKMz6pW7NE8APNNHQ7VN4FsE8=;
	b=DI5U4Xrx1JTumFgETf+Ap6Gt0mKaU1lZYtnjRF3xAtCLgkFWf3071tljxn0z13gp
	LARHF0HIZDuIRkE7/zuIe5+p8Mc4sygOgnJDOaXkntQ9MD6nDS4x1Y/PPWu/4tXjyiV
	5rfCOF9UtqRmrXbWx/ir8RJJAJGytEYDcWEAKO30=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180291e1222-48bfa261-aeb5-4fb5-b5a5-2b0d32c14380-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3cfcc009bcef5c1120ee7ed373aa611ac8709417a4fcce9b76862e7138ba0405
Date: Thu, 14 Apr 2022 17:27:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.14-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649957278
