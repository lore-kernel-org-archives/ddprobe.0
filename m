Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CC837A
	for <ddprobe@lists.linux.dev>; Thu, 10 Mar 2022 08:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646899284;
	h=To:Subject:From:Message-Id:Date;
	bh=OaETGYDxgaRYKcGvvtlJdE3X0lOcviV17SLRRZM+0cQ=;
	b=QH2UXpKb7kMsbY4Yu3JRXtlhw72PTncQajlRuL5Mh6r4rN6O+qzD7e0B+OtrAz4X
	oWtGUbPrv4/K6310Ui9spldgCMaQ8WzFGdMYUlluJUwSO7w0K/uh4+lPzFGyfZ2vUWm
	zWf1K24BCDWcmRyJ0/DfmBQDjQ4yL9OfXyFCfYrg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646899284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OaETGYDxgaRYKcGvvtlJdE3X0lOcviV17SLRRZM+0cQ=;
	b=eCcoi3Pu79p5lbLXOI5reyBW8LUSuN2z9GHr1lJ04Y13zofbLyhs7Abx8oqvtbAH
	CPxE8gyNmWW/0OADxbcd70w7/CTTEcAgsVBMlPwoTyk9+Bll1QmlrrPtKHmENbJm5Fl
	S+oBvbxlTcJo1e0IyRGFCNyW4+Q3CPe+8/sN2Bh4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f72d8cb5d-41996956-def2-4e13-ba74-3ef1a2166400-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: cc1a2d88a35108eaca79e4dd59e585de88491e4031c2a5c912566c6b683bcd1c
Date: Thu, 10 Mar 2022 08:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.10-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646899284
