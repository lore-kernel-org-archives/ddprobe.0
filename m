Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED76736F
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 23:46:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647906385;
	h=To:Subject:From:Message-Id:Date;
	bh=fz2F6hLN0aSbhhgIEwGkMMD4cePuQscap87Xw58S0Ks=;
	b=SMBwJymnwGgvNQwRlXki7UAHPpTwi2HCmXZ4qLCMtj+tiTD5ndlv+/Dnf1XRTr9g
	iKKhmsLSjJ6tyXC2YgKC8q5YMSw7exhSUxVaUafN+NVbeHC98jtQ/zn2HbL7wpDtQyT
	ClnzNlYwceAbXqK907eq25eudUugZd4xVGnWZRzI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647906385;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fz2F6hLN0aSbhhgIEwGkMMD4cePuQscap87Xw58S0Ks=;
	b=X+hLScuSmiQVpx5PJLHXhCN8TOC7xG+2c58mnpexAvPAttemWZi6Rxt6jQcoqTDH
	8gJKhr/f6r178g0Im1D6OvbzLQlK162U/0p6hog85ZuBQsB8LUqVxmcM7casj/Is9dT
	vqWexPRQZcFeBmy8Vyky1Ol9MBvY3cV92US9vqcw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faedfeb7f-6f905f71-7dcf-4fa2-8445-fb8bf7d118ba-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 650cceaff41b6df1357f81bc313aa24072a2e1cc52423614118ea3fd0941c585
Date: Mon, 21 Mar 2022 23:46:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647906384
