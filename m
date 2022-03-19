Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DA935A31
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 20:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647721585;
	h=To:Subject:From:Message-Id:Date;
	bh=8ovqqjCU6DSW2sHQFMzLWDswb0cYOvo304GAIkJF/W0=;
	b=K0L902qKrZS633rpWWP5qm0RvdTSAU876/ny0ORvKL8IaxXu/lqn9BsVpGAtrMxY
	qDhiUFxvqxIymGbt9J7t17VH8HLRetSUI7kkzLV7/ZgzvLhDaTkMUNh9/84dRsb2wgu
	tTYLZepp64NL8l9SklxYaG/qpmpp7QAhXqmYjiFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647721584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8ovqqjCU6DSW2sHQFMzLWDswb0cYOvo304GAIkJF/W0=;
	b=NFUxP51vhoquq+TN+jcRzrKJ4KVgCP0cIJIOrBzsq/FVP5CgzD0pPbqDovAhX+a3
	9zoMIWsYlFCpa7BDGSSAjk091xi/40QtVA7QO6AIZ0ku7i1gjEFQkt/k9CmRdON6IPK
	h1JGozBAplfaoXvSLl4Rg5kNrLk4rL35oqPMvp3g=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa3dc1857-026805d1-9831-4430-86df-b5ca86c41384-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eed4d5da0c26139ea5d9f43bca0291aec64f05828fe2021b19a507b48960e3b2
Date: Sat, 19 Mar 2022 20:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647721584
