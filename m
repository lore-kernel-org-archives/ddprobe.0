Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5644633D1
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 11:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647861684;
	h=To:Subject:From:Message-Id:Date;
	bh=sg0Kxz0zAUyN2+RSO1RFQLaQZOQ+6xDYSnwfdr3x9PI=;
	b=RYGmFMqXZn5+aG6PU6eBgmBKpXFVBP7g+uaIJ/LrsDlUDIahENXw74i5Mk0YjR8f
	JIC1/W3PR8nJxh+wwNyqOtmrAAb54y9FbrtqSHZG1BTyIKkrwHK7kMXF8omtTfzq1C9
	m/jvlicReFhoWvJoeqhVQPidJwDOxiYCU/fZ9d/E=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647861684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sg0Kxz0zAUyN2+RSO1RFQLaQZOQ+6xDYSnwfdr3x9PI=;
	b=kLnoDpp2N4ElUBJeGzQjGHTsdvPKB4BzLR9X9nlGGbZUZ/ZWnduH+GYnXcjBznKS
	3MXfe2K/52yKPv0CVZlvGtj6lpPj/5DL5eSOpcfo+TgXTStlEimbj86ZNoKU5ZAkxWL
	qzluSaISa/WaRJKDW+ti22ddywuzzztaceLPgTpo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fac35d9ec-51467064-cf00-4a56-a60c-1793f396d63a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a565cc00db99f3390c8c169eda50f4ef7500f6af8d574b061cb1cb68dde2e9cf
Date: Mon, 21 Mar 2022 11:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647861684
