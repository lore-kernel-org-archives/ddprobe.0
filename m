Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 984AD1B68
	for <ddprobe@lists.linux.dev>; Tue, 15 Mar 2022 20:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647376285;
	h=To:Subject:From:Message-Id:Date;
	bh=vlqn7jp7REWrS7sUyd3VHUtK7gbP6IuCQnZOtUFS2mQ=;
	b=UqsposJcRBP14Bql8QPwT+wJOwQz0XY5+cw+dLTk+JnEV4tDqGrR0nw5w40VrKcN
	cYv4TfXuqJDCHlaPfvHX8tFhGRmhP4g2HN3wHYsW76ks6raAPFK+BaZ8kMsMASirNnc
	1b/v/UP0UddFDIXM4JXVrTX183C+hRwkDu9L3jVU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647376285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vlqn7jp7REWrS7sUyd3VHUtK7gbP6IuCQnZOtUFS2mQ=;
	b=VuNwGvdAIrr6FGW8sTaT5X/WlitczeabppYWnfTumYEgiaD8D+wWvhSOcX1ZEfdK
	sClRAP8zjrSo7d4eJTBK9FNOFl7iPcBaWtMNwmkgRYYM4wJREOaeHjHROMMre5gTGnh
	Frdp26PE+5190j+lt3itwMb3dqo6X8vWa11IG6Eg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8f473c5f-41356989-2deb-4dbf-8286-c191ba1a744b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f196db5d209036c69feff84906608a44ea35fe56b7967b5ed4677344f63cf8d5
Date: Tue, 15 Mar 2022 20:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.15-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647376284
