Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3969139B
	for <ddprobe@lists.linux.dev>; Wed, 24 Aug 2022 11:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661340652;
	h=To:Subject:From:Message-Id:Date;
	bh=6lTnM9/cPQz8KCVqNV6RLARgqHPJ0e0DlLw+RmwP+Tw=;
	b=etgCoBH4cyG4HU5DMgHqnRa6oaRhrs8Bf/NtZM9dRYNsBJBL3cFqLjFHHAnISgU7
	74Iyr1x0gK0c+FLlkMG5FZ14roujSoTVNN/9pMU7cZyAWENiYLkMmhlY6p1h4baEQeZ
	NyISgeYKsW7/qLDec5f8t+a8qrLV9An+jUxE8oos=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661340652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6lTnM9/cPQz8KCVqNV6RLARgqHPJ0e0DlLw+RmwP+Tw=;
	b=bHheSCTTZD151Hlt1CqrbcVpKmnwat8KPyu+abv9srq44v6gLWnChIDd4M08YkFn
	l6q3xsY0/IJOescLJ2qEnvMqM3lG5Mgh8V0ECm9u0sVjvtiWMGYy4gJ+1BRaQmNreLA
	6Gzf0mEfoWSmB+XNCfMzGGCi7G7PNJTzdfnQpa80=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182cf9e9440-67814267-24b1-4cd4-b348-5919c31ec587-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 269825ad7166faa53f552afec86107e8015f2f9e9931d5d1ecd94bebdda14dcd
Date: Wed, 24 Aug 2022 11:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661340652
