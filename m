Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427672F2A
	for <ddprobe@lists.linux.dev>; Mon,  2 May 2022 18:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651516138;
	h=To:Subject:From:Message-Id:Date;
	bh=DQPUuXvBv/H9FStL/sq2ZesSCCScGygJ9dvKn8RbHik=;
	b=hJDhuO9kBbET0uCGHvQ8iEajmTx8k/LqR8M08+NHMHh3fiZmrKUPaO5+zf9MQ407
	DkT/JBj+LA7IpbNgsQNnsvfk+ge+h+dMhMxFHHMAtfqpEync3hyvae9SQJVAEKqo8CQ
	Rt8GAoy+SkaeQ0JAUwKRaUWzPrzf/0TfgxbHLZpQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651516138;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=DQPUuXvBv/H9FStL/sq2ZesSCCScGygJ9dvKn8RbHik=;
	b=TwYk2n+KMXjuweqklR92mVg2JTNH9lJyyGLiUQraHfNLxpt1/flyo0tNF5yQeoZ+
	tSX042mW1xhlbK2X6SYPeRTSbf23RhpuKy4oFwCwA1rwfiZ3cL3K2QnxSq/BC3LEJlg
	3cSkJt76DU4vgmB+N1ve9dKrSIkxFE55InZiJFhw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808608631a-d7504005-f22c-4b6d-a72e-1797007bbb18-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a58536d33cb3cacddbecbd70f920cf6bdc3f3a4737449f6eb26bb413da486185
Date: Mon, 2 May 2022 18:28:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.02-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651516138
