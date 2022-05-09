Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 413E81865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 20:30:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652128258;
	h=To:Subject:From:Message-Id:Date;
	bh=V99YeOUz9wFfu/CqEJUZ9BdQ/XQJZcf+rAtFGa7jk4Y=;
	b=KMl1QHN69HVheRZybNVrFJLQIL64JUQ/Zp07PL1BYmh5RHv+nlcO4Fq9xpNDg1sr
	tEAga+L8RM+uciAuPKgAkSIpVgrZeomT9UPf3dr5pvLTCeZgZJOC0aH3QFnKJHezDff
	H2z6tOZZjYklEehXiiNY1ICL5Z1teMmi5NFPhJSs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652128258;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=V99YeOUz9wFfu/CqEJUZ9BdQ/XQJZcf+rAtFGa7jk4Y=;
	b=c9WG4n5xfwTSCUZ+gqaqXmIYt7FA0a+mxZIDHQ4ICzd88KXrIt9kdxmIBLAr2spr
	5W7pZxE1K17Wsqki0O2NNAtb+07Mt2aLF2/ODEEh64//7Sv46mDbN7R+8diwrXjQjMY
	8p5eBg5GFTk+k+ZoGotPyuz8gnfPOyWrMe0n8kyc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180aa849927-a3a043e2-909b-402b-9eee-703b57d4876f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 99abd65a002bd1bbce4809d4cc2198c9c9e1c5f969697f02e98a453e3c88d530
Date: Mon, 9 May 2022 20:30:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652128258
