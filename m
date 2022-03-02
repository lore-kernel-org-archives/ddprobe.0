Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F230420E9
	for <ddprobe@lists.linux.dev>; Wed,  2 Mar 2022 01:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646182885;
	h=To:Subject:From:Message-Id:Date;
	bh=FhE5Y9YnIrMy24QFYjhmaRdST2hYz8kSncU2xW+HEIo=;
	b=IXuAvlwuvZYTh/91DvUlG/I8q++5qOAMmYqAP+YfjCLzN9H5Sap2HJq6w5Qa3vfl
	SvvYEc4xe2P1M307zUi5EQmIBISW+3nCO7YA/lDMedGOzWielQci7a8QW4n3sPzwkpL
	kWIyeXOUrBl7XnuwuTf67KyWkr152A4MTzjxmyyY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646182885;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FhE5Y9YnIrMy24QFYjhmaRdST2hYz8kSncU2xW+HEIo=;
	b=Yx53gWt9l3XGsEYQwpguaCqLEVNv36SiYUL2VQZGWpWKsGlKqpcJgBmFw0g9bYLa
	pydAxU6rJcOUAm+oOeUMwFY8Q2pxYdS0J+rcXeMEgUTOO0aQcRX9S9YT0mVzXnIByWT
	V+dZ+xK4CJzB5zljqICFGY3iwyyUrdJw5pGAzdHw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f482565ac-b4bb8050-7726-4624-bdc0-81a8c102260a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6e7d36a017f36a1f342e4d707eb001ec2b254acb6ec91affbd9518bc03a79db5
Date: Wed, 2 Mar 2022 01:01:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646182884
