Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E31E1B60
	for <ddprobe@lists.linux.dev>; Thu, 24 Mar 2022 06:57:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1648105078;
	h=To:Subject:From:Message-Id:Date;
	bh=X38C/WsVLHKUqiz8awQkGPGQSyjkwvxG8hC4sq6q7wE=;
	b=gijFFzjuvD1EhelTBb+2MotAz6IEd/E2/7qgCbbhxVRhBGrVI4lXW7eR+SnqNF6f
	XW6HfgzfEfgOJ8Oe6v+Zl3V3bC20q4g1+5Ecl8HKToJlnp12Z+eWncaAEeUdSzFNZvT
	0/StMbDBuplcFhFyzgABM5NvPWnmsCDoqZiENNwU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1648105078;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X38C/WsVLHKUqiz8awQkGPGQSyjkwvxG8hC4sq6q7wE=;
	b=WkDSjICCdp0xC0VknDC3L+eVx+HDy8nR/HFyk+FQpQG7dcqGq9al5qXqVj1DIhfv
	yQ40YI2op6mrkCNd7QeO4Y+8sw2T3Ep4IQNFpqJa19rariyTR2SdFDqemeCqxTWIasO
	Lhx8wGui7bAq41E1CfwJhaETrFqVxNsofg6TrPjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fbab7be02-cb1f45a9-7877-4a55-b462-83fbfebb6535-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 93703a6df5d9ff7e8802af6c8e6697b7ede1f3b91fa3366958acfe818b99ca75
Date: Thu, 24 Mar 2022 06:57:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.24-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1648105078
