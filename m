Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70F432564
	for <ddprobe@lists.linux.dev>; Fri, 22 Apr 2022 16:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1650645178;
	h=To:Subject:From:Message-Id:Date;
	bh=ZJCQP110ZII2AuaYzhTByD2dWdZ/i9hgIaywry9IRXw=;
	b=VQ1nfDflyriHFgBYYCxgCiU/VwUgboXCQPcaBO/MO9kwuA35tjA3Q3p3hRk6v1yc
	zg8TIm+qlKo2xeK4yZBvZGc/z5PnlVbcYwTy4rEQGd738wExmg75uxb2BO8VCalTopf
	x3XQZhwcavjTM/xjAPeJemmGPcFhw3H8NLfwH6zs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1650645178;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZJCQP110ZII2AuaYzhTByD2dWdZ/i9hgIaywry9IRXw=;
	b=eyIfnz4yxStO9J2YFVzU3s3BjwhFLAlfQ2siXE934LmfY+dgahfg+G7sR9te6KEE
	1ANJ3OAZ7zeUaKjrZiXF9/xZu7DGiicvjWw51cTUYaV5mqIcJXnWjve3xv2WFuX8etG
	RO7GV7oK5Qno8ZdDUQWdP/RhBYJUNqud3UZDljUQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180521e9771-b772fd4c-4554-432e-8ca9-02f455f903e8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ccc5696cd8df390dd392d5dd4bac5af4701155fac8c0c3a32f229dea8acd0b9f
Date: Fri, 22 Apr 2022 16:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1650645178
