Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24F5F7C
	for <ddprobe@lists.linux.dev>; Mon,  4 Apr 2022 18:12:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649095978;
	h=To:Subject:From:Message-Id:Date;
	bh=zwx5Q6PVS7rOOtKVkMICwQIpOqeW6nCAtDuo/lhKlCk=;
	b=OQXGPxymVUaL39/MCc73mX8ki8/fwX0M6dr2+Dphe02xZQCTswXmoIgDNkR6XdoH
	KkBf2tXaLmT8y2FiRP6uwnh58lIrXKGqvmvztpkEnSBH8uCyb6tAdp5EYaIyqkVS3QH
	4mLXIhiD4QgIq+phE23PM7N0+BxGCAboTAcjmWKg=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649095978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=zwx5Q6PVS7rOOtKVkMICwQIpOqeW6nCAtDuo/lhKlCk=;
	b=i8dfqDX+ObIUcVgTh54RHYMhock8TGlOnrDjgEipBEGzLcJuIRxY9fvsqhBxbsNE
	1KAlsw1Vr/ekF1e133RmtVhuE6BgAj/3HseINE0/mPQXaAy/zkTLgBC9unFbS5IQQbD
	v2+vSdQs4/MwINS5SCnJJ9uidjf86Hp93Kx19LhQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017ff5c7ad60-e11e0bdc-66ba-41f1-97b5-9058be89c3c4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a2c009af6ea5088a9088eb2a159f4c81494d32460842343e491ed3995b1e2aa3
Date: Mon, 4 Apr 2022 18:12:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.04-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649095978
