Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC4697EC
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 09:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661158853;
	h=To:Subject:From:Message-Id:Date;
	bh=EnrEFeOoBcckRAIG7HkCmKWNvn/yyDISDsaBSlhMj9I=;
	b=g7MLiWdxnF67x28GLLhATysQN9j4hfjGcLXrgjaG5qzZ8V1D6Ol5qii+nWLLUFSC
	YvBKZ29NpO0jtMJ3s0bTvhYX0TL++ttMFsqlCH34Z28hj30qB4uZ8T4e0dAP/BzfJr8
	JBSB40JXlMvpH/J6FGLNMn0KOAwZfKl4A+H+B0Fo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661158853;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EnrEFeOoBcckRAIG7HkCmKWNvn/yyDISDsaBSlhMj9I=;
	b=EdE0DUczr4DuQp4k4+qzbXX99UIZxWnTcTdHUrFbRgsBZ1CflDWI/KexkvtS8OC7
	r95T9VEU9tslDd9Pgs4ntAreAJVROxZ1V5n+CZNyxeuEAL142IEp8kb/hXmmWylmQ0b
	apXLW0MXtoXidQPKcpdUR4effZDD4MIjImOzoqoA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c4c887de-e83a014a-3452-46f8-bf54-82746c4397a9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: dc01399280dcdda8c8a9b2c11f6f0c7ca52d6118cf242890959979efb26c3327
Date: Mon, 22 Aug 2022 09:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661158852
