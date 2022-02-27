Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ACD47B
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645963884;
	h=To:Subject:From:Message-Id:Date;
	bh=sEbJoBWI4thdJcf4DXnWPjE6m67yY1vYis1yM9iwkI0=;
	b=dD9AwWoIxPpAUlgCpY9fGKe2o6HCMJTTIDP03z1HkzmuBtwIr7YRcXx9PWTExNRU
	kjvRBoWsQjXCuI8/1iFYAw0fKyTyLKnr7HHylE3Co6yJaNPgL3BF85/MAcuypRELjoq
	hCdMOs7A5mX8BgPXmxp1iJ9qhIOL6aWnIYJtakCk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645963884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sEbJoBWI4thdJcf4DXnWPjE6m67yY1vYis1yM9iwkI0=;
	b=Si7RyCpJMomxXMPhaXOd1b6b3RIZQgXPu+SkakzbR3SSyEPfdonKkJSd171lGskb
	Fkh+Bn9m+KaYgRx6Dgas4kESX8+Nl2DMbVDX8c1od8ejJLb7Lc3d8EAmzrNn11wnpT5
	oAsglEwcgEhK6WyOLgyWtAuMlecYewxaXeu57qZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f3b17b91a-cdae73f5-f2b3-47b8-8c59-d0d437f3cb03-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 255bc0d1f5b948221a11922118901c29547dd3822d608718caf82004da94cf71
Date: Sun, 27 Feb 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645963884
