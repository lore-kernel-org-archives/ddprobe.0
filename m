Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B63EA1
	for <ddprobe@lists.linux.dev>; Sun, 10 Apr 2022 10:54:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649588098;
	h=To:Subject:From:Message-Id:Date;
	bh=gk+pYea8reLGM7rruSR130UaJyJ0KN6/5xEU+hHPod4=;
	b=kSH7IH2WXE6nzZdC7qRCwws9+lKOuKBVJoz1Ih7SGjuUX31EkR6V8PRb3ySqIsvc
	mBXZ5tRmVooTN69vz972NUlpbjjVLq4SpOtOOt9HOc4BJD2KjWTPRU8IK2rQ55wukYI
	+OEOzhXa7EoyRymg/G06PUCj2DI1XwDQqeCPXKQA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649588098;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gk+pYea8reLGM7rruSR130UaJyJ0KN6/5xEU+hHPod4=;
	b=MQ5FlFc0dBdAcjdbUQn7yTZoMgcZdtdyGzLRO89BrFBvL4WWKZiOz09J6IMMRCe6
	2xjzjW77562PPBQGDioIvC9Nu+lIry1+rXnGvWiBcTXy6HHAAQNwoy+9GviJnudpwLM
	J9TMqIAprN0GKIux+iKD0+k99I4PmnT7kqom5JVQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180131cd4e2-91fe794e-410f-413c-9cd6-987b08b197ec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 40484c6f985213ef03e74aaaf7b98f01eaa1dea79eddad8ad2b7edac29ec2e43
Date: Sun, 10 Apr 2022 10:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.10-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649588098
