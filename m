Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D271FA9
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 02:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644978684;
	h=To:Subject:From:Message-Id:Date;
	bh=dxydsTnRktWbubR5Cs+NSOrsB9uVTxXdERWTUkygJ5Q=;
	b=BYCLIcDKi5ITKUrN+MN5LJSTsNQ6kOjCanRXNv5e9E65IWJhVT5QxI0eIKTYEkNV
	QOQ/mYSchN2CGQoT20ViXELPwGUxNGSec4dBqOEOlbH7F3iMHJCFUhzMpDMB7FuO6Ia
	qToQXk9qTvVIV/ZgvJmH/jjDLRJi5DOu4XHqmT0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644978684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dxydsTnRktWbubR5Cs+NSOrsB9uVTxXdERWTUkygJ5Q=;
	b=SxMfpO/NaZILRYrPSBtXf0GGpANwjlgjFzwA35K6VrWwunaC6GIT8xVgw3SVyxlo
	dxMCsCxuuMDr6hpklxKIiiOWCv2y6JsA3dXhuepYlEgoCy3XsI5qr4UOjmMii/6kWpE
	3HXQtlV4Ds+GrFJ+7zQOdsyVFTUZWS0vi5UwjXa4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f005ec330-07905ab7-f68b-4223-936b-2c0918468ad5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 443172b531321bc7d3480f715ecb114fbbe360d322849c1e10825bd623c8afd1
Date: Wed, 16 Feb 2022 02:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644978684
