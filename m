Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 101AC7E
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 13:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652967659;
	h=To:Subject:From:Message-Id:Date;
	bh=SJkE2piGleJKjJxbibSiWV8Cm6xGcTwdk7B6PlQ/y4E=;
	b=IC0MELvBt1y4/XoPaDrURtoEhVmqdvoiPQuHfuDSsDJiqQa/nAE5BshgFt+21nR3
	1IiiqZJLFsmmvrHkt3MXgf8Zc114/R+GnrmKpSeyuJryocwsq/z6JM2DdOiuWne3JtS
	gyryJsuqYx9J4T3iLXSHoilPtCM0ycmCnHQ+tShk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652967659;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=SJkE2piGleJKjJxbibSiWV8Cm6xGcTwdk7B6PlQ/y4E=;
	b=LrjG/zDvxTgsQSindvzlxYcxK5yQ9HsejgBViY+m0bpKxJa8LD6nwJzuB+0Q/F0G
	JdnRjXJQ0iw9YBCAO+zhYzbHvjSX3G1wBU4KOMe3Q5NUv/mO0FvvMTzsgBKgWMeh2rx
	IOWa4e76kTU14bTKlP/ql8WtHubFHv3Z8Yaf5CWE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc8cd71a-c27dd662-2512-4e91-ac8c-0ccd7686d595-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: af8d0a6d63650d2d20e14309cbc3bf5bfc76c018987d273faa397f9286034501
Date: Thu, 19 May 2022 13:40:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652967659
