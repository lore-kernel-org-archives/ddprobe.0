Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CEEA7A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 11:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656500812;
	h=To:Subject:From:Message-Id:Date;
	bh=wm2d1TgvGhGB1GrQPWggMClGIauttknwzQyr7JuIJDY=;
	b=BbChDXMpZMeQpSE0GvBXqTKoMDt4J+7NQE1iAfpVHXFXKQbyxvG20Sq8Y3aPDbBy
	Q9mUfNrmWHFyJ4rghjjuVPbeAP1ZqR8bpQHpoE5KNELKAVln06vLXMGZxRTpIDnlv3D
	7AjLK67ilQCwjmZJA5B1BdBgOMAPRt+6r8YeSpJY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656500812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wm2d1TgvGhGB1GrQPWggMClGIauttknwzQyr7JuIJDY=;
	b=YZ6/1nDuRB1DR05Pve925nIuJP273UeGvZ6VcX4l9DFZ3uihE0NiK5aHM3vFZmdw
	upmmbkZt57lVaeYRKQOy46rKNtK8fAX+d8lt7E1bC5UaUFr/q0MUDhiINIMwER48EEw
	+OGeL5Mo5HkQ9WndQrX7WgKax7VVkB8AddtQApaY=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181af247a0e-4db42de8-02ab-4ec4-9225-40b048e7c79c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ab1a1e05134b2a0a04c0427063f5f4fdb818862a1b76bb6261088a3e1eea99b3
Date: Wed, 29 Jun 2022 11:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656500812
