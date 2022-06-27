Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57EC20F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 07:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656314812;
	h=To:Subject:From:Message-Id:Date;
	bh=5cSd47aRZZYMJI8wwqFBJTo7Bz5gGbKq1EhKrvuGJEY=;
	b=Fnq6UGUPGB74Rxeqwss7DJsnfPD+xdoDqCc7v/bkzKztPxFaNey1U0Rrm0caEHrV
	w1VvnggFbXG5YGxB/BlbiLCcL9gy+Qxv+wUFnHYFjI3mf/kwobsF26WrL4Y4qX7k/jz
	o0kIQzPHseDaYUGmAFE1/eFHNrdnsgYLdHJHjRd0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656314812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5cSd47aRZZYMJI8wwqFBJTo7Bz5gGbKq1EhKrvuGJEY=;
	b=AeH2DrSl4llaBHPw6XgyXXmq14FZ4/HrC8q+PR0hmoIyJFmBmgafWct3t8AUr4aH
	KRUnDmOyjfkNL/QDO0Pbf0gDjrjnOo/GmscG1OZ82qq2dgXhEzac00qJFqs1zRfMIr1
	cDx9pfBiFpTYZEtN7M9gPf8lTMcHt+ildHrame0o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a40e579f-d73de0ab-6abe-41c2-9ce6-324715413652-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c48d29220ec71f3b63c53dd9a4e18749632cd491a83710cc40f8b883cae7523a
Date: Mon, 27 Jun 2022 07:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656314812
