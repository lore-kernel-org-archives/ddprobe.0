Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F7E1865
	for <ddprobe@lists.linux.dev>; Mon,  9 May 2022 11:32:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652095978;
	h=To:Subject:From:Message-Id:Date;
	bh=iC/a0rCbjdPo4jUNKcZCSCniTe2wqaKu1VM9OM9q72Q=;
	b=RG7HU6iFIwolMxxXMHUs4r9zjvkPEaTac88rWYwBjffIzHJQFyRlylCG/yUndeft
	XflPsIJhpGskUHiGkjE4MwZVm2ENvVzh2uGMHMbXMFdnK4mIZwlZjb2bOJnko+FT3en
	+NoeST2wqbMg7Kj+Jid66jazA4kwr1KqBOSf09qw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652095978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iC/a0rCbjdPo4jUNKcZCSCniTe2wqaKu1VM9OM9q72Q=;
	b=auQVqWS5a4SF7hw1WOtQEGcSkKzI3FdQyiKlLJkPoXMm/awMKjpFFHpZmS69iplM
	zTkBV4YusUNNOwKP+FP+ZideDarBv4D1h5Tf5XJ2fl0MduerBjbwDGqvU1rKqfXqezb
	IvlaV76H2wjO5HSIf/PFNiovHu+QRkDhh7l0qQeE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180a8980b49-214ba292-8146-48ba-ba9b-796bb9c0c661-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f8afd17d2a1b1225ca840188299cb176da26ec055719e75b853fe314cef35ac
Date: Mon, 9 May 2022 11:32:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.09-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652095978
