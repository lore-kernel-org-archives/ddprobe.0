Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEBD13203
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 18:52:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651690378;
	h=To:Subject:From:Message-Id:Date;
	bh=vVcGclUs3sIDH2LWbQSfIdC9NniLGS5DxwkeckNKeGQ=;
	b=Uk+CFBZezkkfVXQFnc5VwnkBk/MYo7RJeMHWBPbPCWVO7aAD6CrbjK2XEnazjAVi
	ZhJLjDKqMIlefvU6MyItvbJhzgqIwSc0O9RBYhv9HWGqZY8CZh1iJupxzz6Nx0gudI/
	QYZjxee2Ms4v/wMJaLait03S1Ylv8rY7VaEjL5ZE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651690378;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vVcGclUs3sIDH2LWbQSfIdC9NniLGS5DxwkeckNKeGQ=;
	b=I6NeTAuURGLFcCwqMUOnBl8KlXjJXKIRtKS0BteSNBPITpB6VBRBbu+oVTqEvQZC
	aE/DuM5PPmwZMlX7J2CbfrFUI7ipXSv5aU5GaxdtGAHqlmISwCze7VSGfXBWdG1ggHE
	WtAEA9dZ18sl2duVcYDYhAnLBU41BsZULajZpn8k=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180906b140b-90a2660d-7895-4c5a-8384-cd29aa304029-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fc4deae102f9a569595fa865379ce9aa9965b81c3eef703444fa96b1cf54540b
Date: Wed, 4 May 2022 18:52:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651690378
