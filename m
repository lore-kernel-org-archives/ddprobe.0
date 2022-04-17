Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7024629
	for <ddprobe@lists.linux.dev>; Sun, 17 Apr 2022 11:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650193558;
	h=To:Subject:From:Message-Id:Date;
	bh=ojVhy7tXwh6UmTlfIqS8+NU4lxdE109LNXxrmQO1t18=;
	b=UqzBprpzHMDUI3nndHF5qOqxM8hxwtM/3EB/yS18Z3jgD1WGkXZ/1Dw7pGXicETt
	C+hLzcCA469sf/BNoxh4khT3SLOEp4Kl/yBg6xpulFAWdjZwJ0D5dX4Dk/vqs5UqUpx
	zCHM+WtqVVMbWxESTcJ5sfboyOurvuIhdiKj3iLs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650193558;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ojVhy7tXwh6UmTlfIqS8+NU4lxdE109LNXxrmQO1t18=;
	b=SgDr+4m1ddLKbIRnkvxVm/VRucwfU6TwiMM7P9nH+KJWpCMbyx0IjXEGIsOGedNC
	lqhRoXZA9Gr7XLB6Gp5sjg8HE2D8G03yVMlFbzjwOM+1WAv9T4IEvxte2R0bMlTy3yh
	j6gTyhhz/SYZfKcaUoRHUKCh0KK9lP2Xvl2cBtE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018037336ad1-ff585bd5-e63f-4146-bcfa-2ab8811484a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f7df0da95335abe2ae6d431b275982ff64ae8e56457f5c5cd3e876b3fae4690b
Date: Sun, 17 Apr 2022 11:05:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650193558
