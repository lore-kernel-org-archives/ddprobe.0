Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E828C3207
	for <ddprobe@lists.linux.dev>; Sun, 24 Jul 2022 13:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658669812;
	h=To:Subject:From:Message-Id:Date;
	bh=CEpTzsc4olIe2jN14AAgxFcf4+t6Yhj8aHaSr1oudVo=;
	b=HUi/sLnT8/XtlT06dXfsSKONBOe2daFYfkpBJJTcWMH6CYBDS1mZ/7LBvQ6IENZ/
	axfDbzlOvcxEddoseUROAM/Ji3HkxuPJpRnAvnGKIHLpDF1U9ln//fE7VwZcvXUAPqo
	/Uz7ewV/2En7RXXufWJLaSK6wfSVK+Evtnyej83w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658669812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CEpTzsc4olIe2jN14AAgxFcf4+t6Yhj8aHaSr1oudVo=;
	b=J5wPwpbW1WLhBp/9PzGqGV54UikaCf0J+XXEzyR6LzhSgfkCVG1BKR9ltnXys8cG
	Tuus1MTMQvrQsiVqgI9bJ9MOl17T+49B1AehkFe2foqgYdVAGZ2DdLQiztGxwDALF1M
	WCjElC9rPrD6WzEWYCwEyNmZRhgRT5ij339R123E=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182306cca2c-6c1bc6be-4318-41fd-8052-1d1d99f9ca07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 96c2a68a35f907a98cbea67d36deed312a59168a4159864899e641699f97a6ab
Date: Sun, 24 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658669812
