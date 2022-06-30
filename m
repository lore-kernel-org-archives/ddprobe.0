Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59E75A2D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jun 2022 04:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656562012;
	h=To:Subject:From:Message-Id:Date;
	bh=A893MWzFl95eXHMJMF4SlHnkdhGwh4RJfy3y2ylkYLc=;
	b=ZZp3gK1C30xMQ379TC9EHMKRuHwxlJqSbACdxMi/UqYBibLHBA37AmqvbrBzsgQD
	Fn6NEHiE/weqfZAUmrIp7xm8unLH7fVNpMMWLleVZi9ig7vbG67nIrjkav/RcMZRte3
	f+c22tfYOwq8i2JBWQ88zNAcdIfflE1Z0nzKt/Gg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656562012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=A893MWzFl95eXHMJMF4SlHnkdhGwh4RJfy3y2ylkYLc=;
	b=bYTK9qZ+UhelqwVy1t2THabPX9ua9jp/wm7gHWkNoBw2Xa5dZIbAd2Uysfeq3WK8
	OiM4rq58ggfs7lsQdhhRXhlmoWxNqmxw/wTkD1IAsUpq+39uOHNTnU/QuwmmMg+Pr4u
	//Z+qfdvdY9ZZXOjDDruDhdrRAmFmYQdVPTXqV1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181b2ca5084-bd06c3e3-185c-45c2-84a1-887e2367cf08-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f4f41a00c807f6aa9331bd9b2fa7d15ff228e3c92934b042ed6e9ca0d56f3243
Date: Thu, 30 Jun 2022 04:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656562012
