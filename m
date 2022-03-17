Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 744C63D79
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 10:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647511284;
	h=To:Subject:From:Message-Id:Date;
	bh=EkWMByMEalDX3SOToHNo8w2dRB8y/JIYuRaxQ8Q8oEo=;
	b=P4uzkNq1+d4+eKkpi1CBKPqiFc4yKgaDnCTqG9JFZKyjuSHuhA/KMIGE0ZNiGi4M
	O0XI9RK0VRMH800RJF35j1v/dc56YGoXxfor2iUwHDY3ViauP5wNHiN+n5iEQ7FEFiK
	NGyTJ0kFtk2+fURKW0CDwZJI2hXX+do4SQZxcwgU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647511284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=EkWMByMEalDX3SOToHNo8w2dRB8y/JIYuRaxQ8Q8oEo=;
	b=Pw13ISr71ShWUXgFyejFVx+qH58KtqjRSnfPBd1me2c/ORp0qzje0R7UFO5uce+a
	lUvPS0ddxEF174za7bVM4MjXSvA4LKgJrWYZ7M8QvpHkl93loMcD/C0qMNBaQbLOgPz
	3pk/wwPwZVdvyIwAWvNX5GSa1wDqb8P/zPL/Fvvo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f97532c36-e920c3f7-9fb8-46ca-9311-2d7eb221aa38-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4426367cf66f0d98e8025d5bb967462cc1816f1c60078bb3386fb1eb6ceb0290
Date: Thu, 17 Mar 2022 10:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647511284
