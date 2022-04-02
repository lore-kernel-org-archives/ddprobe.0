Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D271856
	for <ddprobe@lists.linux.dev>; Sat,  2 Apr 2022 14:15:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648908958;
	h=To:Subject:From:Message-Id:Date;
	bh=3jhLuJyZyvIfYvu61lYu0v94dAvAo51NA9tZyVAoQyg=;
	b=ExPBKjqeIOCkId6O6/b3TmVjXy/ygwrGPY1A9k9/PuNiqYV8EwTjyoOkoXI99LA7
	8fsna7onXuvyGRIO1jIyAKDXj1SMY88Th9WjtrLgoWX7ZZ/VJetZLZZ32RDZvJi81yH
	+JmoLIGS2Smv3ldg02YGoEk8Za1mLsWDvzDA95Go=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648908958;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3jhLuJyZyvIfYvu61lYu0v94dAvAo51NA9tZyVAoQyg=;
	b=Uc0K8t0pD+lV0b7Bf+pBIsOz6y6tiPFcuoiB1MoyLzsm407lsndTa+quY3HUsjIu
	+n3URnc0c2om8J9v9T+8XayVUUc10F4xcvfRGOxHXRV96WRJjS5wo7vS4Rmm3Su8Njm
	0EqCuw+quJ0z2PV7SeoWZVS6JO3NFP6dqzsAzKBQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017feaa1fa1b-39b79546-9f5e-4a94-a52e-15901f6c3c4c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 622f88ab773daa4e9ea0ef8917b24307079da8317d87f4557225147cb5ce367a
Date: Sat, 2 Apr 2022 14:15:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648908958
