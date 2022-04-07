Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1F6B2570
	for <ddprobe@lists.linux.dev>; Thu,  7 Apr 2022 16:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649349538;
	h=To:Subject:From:Message-Id:Date;
	bh=5vTmvXJbzx1pATR7X+EWpgWYHuxp0WhG3YwruXzMPIY=;
	b=WzButHgNeQJjsvv3QnG7/K7EPWPh+NjHZSSg7LT31UwWJ6OSY2x+QJ17ltcKf/sf
	KP2G64xmAXbgAAq+0PmEmFmWaPYNipJtWXp4U5Uy7r+MQEOyLNQPRjeShjBaP3Pj4qM
	1U/3HDdb+pg5EnExNK5heSgcp2zlAEoibU1fFhEk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649349538;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5vTmvXJbzx1pATR7X+EWpgWYHuxp0WhG3YwruXzMPIY=;
	b=aNGYC7tHq1upqvrFIrem4saLSCAcATrSmUR0zHPiu5dkE42LAV3psdiZ6iuUClXc
	ocg2QQzFzzWHaG6aobNg0IUocFd5TWlhbs8wdOQMrjk5bSByaSFRfT86yk+I2EEhwW7
	aGOvv6/r2bxwEl2L/X20wwp2DAMa2AMoboQClIGM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018004e4b26c-8cbc358a-e856-414e-9c1d-fba90e220c27-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4a53d6491df295de34b722f30e4a3cdeed879c2af59af7e33f3ebcbb118bd068
Date: Thu, 7 Apr 2022 16:38:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.07-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649349538
