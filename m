Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E9714350
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 08:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647591684;
	h=To:Subject:From:Message-Id:Date;
	bh=3Ch7eY8LD/aU5yc6yUG0QOOwvEVyoqn1IjsSmGGSmBs=;
	b=YJqcz7bMqjCakJtE5eeYd+W1n7wY0gOjQFswPGj4jVLvLkZ4ChCdEDcZKWhtDHBZ
	uiKsJMnCnnrW2cTFR2hk4K3clwF8pbhQNpUZNcnpRKQuo29CcdTy882PT5ESm8Ovlns
	q0b0EuJBHTOCJbv+JLlffIKxNiDrxp9La3/cEKR0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647591684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3Ch7eY8LD/aU5yc6yUG0QOOwvEVyoqn1IjsSmGGSmBs=;
	b=K0HYDuo/yfgvodNVaLQLfRTZxwpnnrsuHu8m7ZmF+7dJYUuDre1m9bEl2aQqDl1Z
	eIl6CembAhZdhXuDq+kqZhVGAWAjMeloQEBR5UXO+7pdnxD/EDmvGSGftcZTYt7wTEO
	pIJiEnTjDWINLwaELZmnlwdqLJ2mzB4qck2rPWZE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9c1dfac8-981e2a19-0fd4-49f0-8f8e-c56cf7e513fa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53ea531b2526046eb6a8231e0e2e0b9d35d335c46926ef46e841aaadf770c9d1
Date: Fri, 18 Mar 2022 08:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647591684
