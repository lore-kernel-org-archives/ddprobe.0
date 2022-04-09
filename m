Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF7B9A22
	for <ddprobe@lists.linux.dev>; Sat,  9 Apr 2022 15:17:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649517478;
	h=To:Subject:From:Message-Id:Date;
	bh=Sje7W9Xo2CXOE8XW6X25xGarmBmJPwdCevpsowk4WRI=;
	b=hYDN6O7k3Y0CSvyzyxfYVdrYMd+0ftYgHXSmGLv0xhdKrrjuu8xyX3eftOyELu/q
	QQKBgIC3u/iU8k/Y5+MjcYSph32CvqxEmfIvNXPeCMXeJ/1jU8yF3lIYjRbiHNECQB4
	lPWQ2tyaEly4Yi7TQPR3uwdRT4PF61X/WYNdvTdI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649517478;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Sje7W9Xo2CXOE8XW6X25xGarmBmJPwdCevpsowk4WRI=;
	b=L7kq83UKfVspBanXf5SwNGD78WHUNWtjXpCnanX9MHQDzE6GbVJnf32uGB5aVWMq
	pgBLO/wanaBE2CdfxnHuKSZvBS74b2Kp5D+HiA0s6kOhSutIAoT46zBkige/J4Dbp5x
	2+GkJpwWuhI9LW8DGY4gJxhMw+IfjY0KuLKkodNY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101800ee74168-9ed364aa-36b0-4deb-9094-81ae43995fb6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e0345e00d32cb9d4f368de8e44a4cedbbac26684d6e22560628a1b7404c669d2
Date: Sat, 9 Apr 2022 15:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.09-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649517478
