Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D1F04352
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 14:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647525684;
	h=To:Subject:From:Message-Id:Date;
	bh=6uWyXkVPuTVQEa2ttuoSZSd4WrIzZ9EXelvScC9JcmI=;
	b=GQ+MohS0Qdmp2fgfuPs5TBkH3iO44sO7+f6n9H05LLua62bXMUUalORT1kOtxxVa
	QWrklx+wG7b8s4SPbIfODh3pwTIpR7XiYQ1AjjLAgItd7f5iu3YDEcjseiPVbV8K++j
	vrkGVbRFb3BkfFQjRIM2y5lfmSZFIy9vNrEiGbu8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647525684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6uWyXkVPuTVQEa2ttuoSZSd4WrIzZ9EXelvScC9JcmI=;
	b=NQHpC6YD90vCUHJZRCogDP7YCKKvSyTtJ1rv1lp21+tRJqSvldDqEayXOlVStVnH
	mqJJuKLbGNOB2/Zx7F04yI/E/xTZlzoS5X9L3oH47xrxeO9ra3MzHwrwPEbWpIpfs9b
	YYphzO9teTy7PJYc1ShuBEEo/K08efUzgusx8Pvg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f982ee60b-d5dd360c-09f5-453a-815c-2aeb552c24fd-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9cf6d24b1b8f5161ede239d766439de81c34e2a3e39ac835171f1c03d211c9f6
Date: Thu, 17 Mar 2022 14:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647525684
