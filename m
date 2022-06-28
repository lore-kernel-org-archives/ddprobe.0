Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8F2368
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656388612;
	h=To:Subject:From:Message-Id:Date;
	bh=nRQG5PY9kJVqson54yb4y/9emkCqmmNPR9fdemSDbpg=;
	b=eSOrRqNVmzGMeB8UnYdZZjrcvGCk1YFfL4/rHrvhhbkvrvo3zqljPisZxZAHVMUW
	YU3FFQ0qM+8HgkMSpdLti8/9QhM1WLa1f8f0CT3qvUmyNYZtseKQOazwdR6sz0F3kL1
	jc5v2Uc1ioJrWbF4uB/236BP/6FUzszxVHeUo9Q4=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656388612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=nRQG5PY9kJVqson54yb4y/9emkCqmmNPR9fdemSDbpg=;
	b=km+JjT3HIMux5IHZ/3kX0D84o2hiCyqdjuIkRogeXLaBGh7BIBVKZJ+igTcmPKUr
	0j2zt5K+K50wodODMliSMmUoU72crb0LhOufa+symIt8OJTxbMpq5J9z7SE2aMM4CDD
	XoHBovPMO8bFkQ9IPdeLBo49I/Jv1edBYkR2d4I4=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a87470df-c27dac83-467b-4215-a567-3521f5f0d3b1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 864818530606813d36de1642615885ed1211bdf8d7e358904f75e92fdf8920e5
Date: Tue, 28 Jun 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656388612
