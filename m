Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2B88812
	for <ddprobe@lists.linux.dev>; Mon, 14 Feb 2022 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1644847833;
	h=To:Subject:From:Message-Id:Date;
	bh=O+Lv7dlL1QwuhTPj1gzTdCZeravCSVsmJs14QByzVYE=;
	b=mw0nBHjDYdFBpyjJoq5IvEGBnzYkZlLerQomxaUk2RDQ8HuP5kWX8ePH9QUEXpGI
	Rk+bI119BFVpSkFtKgFOVi40qmTJK5W+Qm2EbDybwmIZrVYhzr4ky1Npn8XENKj3RgU
	+GRUjiaivfVqBA6jAaOYMVKMHqcrTHh71kUwg+Dg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1644847833;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=O+Lv7dlL1QwuhTPj1gzTdCZeravCSVsmJs14QByzVYE=;
	b=kukWIKxwDdiNDPFFnRo/i8AEnbiQktmsmBhsW+dsjSJCTbOHwnS/D6RrXmSLTv3u
	bEM/A9cb3f/geaseA35vtasVmNTGHvGx5QJTebtFmqsoaOI+S5w3sltBdGtnbLyeXnz
	pj22+du3UgXIAkg3AZuDbqic8o/bJCZw/fWZZEbU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ef8921e22-0cfca1e7-a80c-4024-977e-9e2f975a696f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbb38beb2729ceb0fb13a58ce57c2fe11e31a216d4bfb1f7769d1c16a6b27dd4
Date: Mon, 14 Feb 2022 14:10:32 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.14-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1644847832
