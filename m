Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B5D47E
	for <ddprobe@lists.linux.dev>; Tue, 26 Apr 2022 20:11:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651003918;
	h=To:Subject:From:Message-Id:Date;
	bh=KtJxp3GCmSU9em5aFcjB/iODMswMBfZ7IWVNtIXGEZc=;
	b=YPm8qWnDjP2RMNauB4/bfHVavekjg1xSs0dgCBRUAvh6JwX4wXS2RRQNooiJMgjg
	EeZ5ixnvQJu7PvlIbYbsA8tTy3lwRGQ7AiXtibh8uXgW0ZKY+jNkiO8mDMblP0X/eyo
	CEi8zXgz7QsVdgbhriGQVRvt1+7Pp+5HcL8HoxWY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651003918;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=KtJxp3GCmSU9em5aFcjB/iODMswMBfZ7IWVNtIXGEZc=;
	b=YSZDsxn0x5kxdaeAxYMaIPxx8I3qySdqFP082VcKsFRhzayRvoda15gDStFtt0TJ
	mZnuR/P7g7t1j6+i0iV5W51Rvr1mwYQ94+odGsfKMHS10f/AX3WFaQDnGReSakDlEHO
	kavmkzk8wUoj0BCMAaEwvjcrmVJ+ptimk8oYPT9U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180678087b7-753007ca-8b69-4cd3-97c3-73a5a65699ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6427dfe0b263a6d378ba636c59e27039472b1905cf8814fa9dc31e92dcc8ed6
Date: Tue, 26 Apr 2022 20:11:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.26-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651003918
