Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E0F7180
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 12:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647691884;
	h=To:Subject:From:Message-Id:Date;
	bh=KTK77WqqkQs0cCxU5cVDDu/9oIdDtb4ORe6qd5Ya9Vk=;
	b=hUNbD4ex+iTQnBv5zpa7RJMZVs6OGdWJj/OaecIFhhwr9c7RmktMbGrFatz2pxvF
	jtY5rZvOeEY+3Mq+BUCTF4iVSxMBeG0RU12kNGQc6EAyZ5eu4wK1UbER1O+0EfL2TbK
	L5JhpuaIqa5u+ZMx0apeNOmGHAFG1GRJR76sx/28=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647691884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KTK77WqqkQs0cCxU5cVDDu/9oIdDtb4ORe6qd5Ya9Vk=;
	b=JmlvdlqK7XuNu+X/4U94vGz/9mYCgVFw+V3h4I2Q+znj6GTGT5+Qxwg+25fAM+/m
	bJvO9/YAMPCNIkqjiMZFR+yizKL559baZ9R9OOo4FSNrUb+71pdI63TJdGp/q3aEetv
	3HN5C8S8+bidfyOkFDf/Oj2TkCHgSjGMkUVuEIAA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa216e8e6-417f09b6-c496-495f-adc0-ed2fb9209bc8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a86c93f0023b5943bbac92fef54d55416d68e15e4800694952668c33fe68a486
Date: Sat, 19 Mar 2022 12:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647691884
