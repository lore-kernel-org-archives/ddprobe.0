Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 611E228E5
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 17:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645205184;
	h=To:Subject:From:Message-Id:Date;
	bh=rbpKM9fI7J26Qrr+gIBYAf1RkDwi5AN46hbAlza5g7A=;
	b=Nnw5yH4c+ayVBTMEdox2/2AYDH02fTcO9z9YiTLnkRa0e3tdRaLN3w0uIU7ye1E/
	RzwIAxZw98agaOJqIwoiCyxcTMqbmahNVej/qY7+MC34KrZQ8eRpqcxrwi4sVwChSWm
	F2CRiVmgZWFsmzLw2CQ0xPZyk9x+MKkWTL8Bvdd8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645205184;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rbpKM9fI7J26Qrr+gIBYAf1RkDwi5AN46hbAlza5g7A=;
	b=A8L+R71S0mJWZP7bwrL4a9TcHXXiBc/zE7t1ouQ3AH1tYsMkK9++X2RM8IDztGDA
	DTPTW8Q9pMHoM8Zn2wr/C2+PWdXjhRG5Peg2buNdAzPLJNyBBShGluP1lysVj9eCVyR
	8YwjfIkjLe0Ia4CGV6P8PnlEyM3WmQrz1w4fDPfw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ddee10e-7dfd8105-e44c-462b-8d24-2388d6967c61-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d9cfa95092b09dab114259bb8242278483092a2cb1a14db57c953ee1e3bc72fc
Date: Fri, 18 Feb 2022 17:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645205184
