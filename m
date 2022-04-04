Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48ED53200
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 20:25:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649103958;
	h=To:Subject:From:Message-Id:Date;
	bh=sQ1mUDtnCzGfJaZ/AL30KD303/alHah+1/1YdR8+s/0=;
	b=WbK3QvjA72XiGbDyL/H/1EqB1RkrZONKugQPMRbLwq8QjKD3awwu8+6/C1W4Mepb
	omoTeNI6zYfA4s9QevuT0iUlkdRECKGrdgNefE3JGgfWvU7f4zmz2xnXSQszkvAQkEm
	mZVBxLkHr9ujJ51oey6Ab9G63RsmFpg/6+XmaNNk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649103958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sQ1mUDtnCzGfJaZ/AL30KD303/alHah+1/1YdR8+s/0=;
	b=PF1swTkJ/06ZHFcRA4RHVZenB8ZwD5JGoCRwNf7ewSCvTp9rfmTUSdFGKDGrfyWv
	UFcB+YxVSgQQPkZSFNNHF7SnBjHck6TIAv5vErT6yoAH/I1PEjr59XLuotXV6zboilC
	CtueeUCD/dMFwFTm5PE6FwYF7N0MF2kCSC6rjm7w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff6417156-81c022f8-e1ff-429c-a5bb-c44f363855e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6c3cf9bbc563f837326c41d269396d55df970e24e439a9477fb4dc8f19d83844
Date: Mon, 4 Apr 2022 20:25:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649103958
