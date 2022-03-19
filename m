Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65EA7539A
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 10:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647685584;
	h=To:Subject:From:Message-Id:Date;
	bh=QCXgMrMG7X98HnNMNYGGCSHz8vuxOvZzGx5fst71rF4=;
	b=a51GKy0iGioVCnMGfEQRY+XU7iag9C0ZKJzpSoCvl9JwHaWqTjIq2Hbk1rtSejwL
	IeD8L3LFV6HULMR7HmaVS//x68h9uELjXMYs70LNc13R4EBYv58c49vuWq79ssZI8Tb
	CutlK4xg9DGMngrESBg0yrlQeJOvn8GDhmOoI6m4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647685584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QCXgMrMG7X98HnNMNYGGCSHz8vuxOvZzGx5fst71rF4=;
	b=JCojT37GnusCiGFJaHMvcREPL/sZlHR62Lt3rKm9OWYLxrHeb5LHHtgZIssCVQ5/
	F0s4Y2yEqhXGVN49qYEi1z2QQUq28+QTKNN3JsNjUGKfw4m2bfEL0I4jxulZCVNc6aW
	1oAtX43F8EwoqsBQSThGQHNHgEfFUBRQ+SZOmmdc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa1b6c76b-7a84adc4-2032-4bc7-8b69-22451e6b7c3c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6818aea0dbaa8ab8a8330b76ae26ec803d1511c607419dae03626414a12fe374
Date: Sat, 19 Mar 2022 10:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647685584
