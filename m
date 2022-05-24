Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A70D810
	for <ddprobe@lists.linux.dev>; Tue, 24 May 2022 20:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653424499;
	h=To:Subject:From:Message-Id:Date;
	bh=aw8HlmHhDpybvD4/kb4Ez0Cj6pLZLNNiLkVWRjL98dg=;
	b=Cni2WnpoI5OJFnDqo1VPSDlFMyHlGuULuzBIm2stfwZOsqry0n/QCtG1rBkSq1XH
	93Ezj9dsZVGsSoP+/y2AFb5ZtF0HAKJBQEE0mRX3Qj5E7BLYUeCLE9tEIdzd8ZdVFRk
	1wapC6qIKXGeR6y9CrY6Z14RLxFlB5Q4N1M+e9hU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653424499;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aw8HlmHhDpybvD4/kb4Ez0Cj6pLZLNNiLkVWRjL98dg=;
	b=CpwsyN20G7Xkk8MWkl8cShzE+ahB4FwXEoY9hQEvUe8MW9ozun9g0f5Dt4DHMFZK
	1oBcYBJCfJqiS9PZxvrogYvUENmgQFDJbvuqOC6n7FBSJ23Wh+gtRFO81CiKblwu/Mv
	g0PPQqfyLmnOKMniqVHK0K7ALRnxp0H9s4/5ydCg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180f7c7aa73-ca3bc6d8-9e14-4098-a08f-83a3d96d14db-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c255895170a3013448b39ac0a45eedcaf18c36f6f0999ff5c4b46694629bfd13
Date: Tue, 24 May 2022 20:34:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.24-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653424499
