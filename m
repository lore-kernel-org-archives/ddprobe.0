Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0483D7B
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 21:06:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647723984;
	h=To:Subject:From:Message-Id:Date;
	bh=y+Wv4qy7Bw0J5CMVwcFZ+cPVzvmvdtSoWB0gZEwX0pM=;
	b=Zx2JxCbQfiqYfjJSeeJu5NOXGgosneHtax5WudxBfF1VlsHSu1SIlQKFEZFRLqj5
	XCcc57dcialyOzw7f+QYYrhzVcDcrWE3jL6EmMqawQIlzq/PEYLOSegJKFpYGEYXjD4
	yrni5zEksR8VfUjPgh7cYVXvOevBrKUIM5lJm0Ew=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647723984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=y+Wv4qy7Bw0J5CMVwcFZ+cPVzvmvdtSoWB0gZEwX0pM=;
	b=EIMoLifiLAS6MHjSiY+ozht8hkgdlxEWa/NxkZJPNva5/xbkGFqaxYjoGYieF98D
	eEbAtnF6Q6rC0+/mtw8BE86b+WKFPwKQd7OxbqdM2WY7nwMP8v5mBx6X8dSHkfSWJa4
	X9K2ej/oyCVgK1hZTJh6vWTfRVDIDu4cHLcYElto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa400b755-6a71632c-df7a-49b8-9d5f-dea23a2fbd22-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7326620c33a27117e117ba8a0ac7dd2442e260afa7bdbf9a771c4c5dcd2c2bf4
Date: Sat, 19 Mar 2022 21:06:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647723984
