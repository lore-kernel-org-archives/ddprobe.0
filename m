Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3C4446BD
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 12:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647433884;
	h=To:Subject:From:Message-Id:Date;
	bh=YpYED0i9MBd48GKY7GcSnOrbr5+CBMYiNVi+iSbNqUw=;
	b=P94zw1ZnJPPk+81t9K+J4rG4FyQ8VZ958IR+kZ/EnrY4Sj8RFnqQj2RL/rvnV3rB
	IicUwL4eRdyG4ttRl9Px3m9ewBDMVESGxrLiD6bDlVQvzQ1e5I9tTs4vWggdhAjdtB9
	c6Th3VpbfLTruHXKateKV8TVnGhdnU0LuRLzBcDA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647433884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=YpYED0i9MBd48GKY7GcSnOrbr5+CBMYiNVi+iSbNqUw=;
	b=Q8X+95VORofJxxuAZbzoOVbghcIQd+WVlEP+DpYuZYxCrEh6zlCjb1c+2BW+zoTr
	AW15+Ny5Jqq3MOMBUIKr2bC80Vx1GNEOosaPcjJUU3ixuyLtPuOWa/4/GGjFWxoWw41
	lWsewkvq5keNTvM13eSbQwgs/KpyU62qsw7PihX4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92b62455-f932e922-9161-4bcf-9dd1-70efc96da1d7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f710413f4ba7299833ed0af0005eb8cc1a70ea9e33261f48c4d391b7ba8eb589
Date: Wed, 16 Mar 2022 12:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647433884
