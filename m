Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F6FB1FBD
	for <ddprobe@lists.linux.dev>; Fri, 25 Feb 2022 12:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645790485;
	h=To:Subject:From:Message-Id:Date;
	bh=HLe4OZqaR2NJgtcwTzBReyywePC1kI/zk4AC17LflCE=;
	b=DjsRVn0t43PkNCMR9e7KISrEQZfISbZ+qP9fyqWElO6ew3LdF9vraJpETwwIsO81
	qMSuW519gVBEz09sa2fbfR71sLzS3LJ5RqRr0U7mWeE8wa5hWNYKPPrguTapnnc+WNn
	S/vgL+SA9d2DSZsN0NJJZaeglY0FdcaZII5bPv+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645790485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=HLe4OZqaR2NJgtcwTzBReyywePC1kI/zk4AC17LflCE=;
	b=Jru54XaF7gwRglEc83jqKfM5WB4JjysK3pmjRFkjnrzVG78c39TSzlV5nkDDzbSi
	3e3jGa1/lKeYZrSzmHltJaqmpjVtvScVpBOWyvoCAIMzTFe+BC1MKykAdOESI7fSTKy
	IAF6rIY3skOplEypx7Uw+fmJy0OdGfoReaUhu2Ds=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f30c1d915-17e2b40b-c685-44f0-8886-23d4452f36ae-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8822098be7c4af95ab26ba64bb9798f2740cb77cabb13c63408520060277b79f
Date: Fri, 25 Feb 2022 12:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.25-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645790484
