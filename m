Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EAA3FE6
	for <ddprobe@lists.linux.dev>; Sun, 20 Mar 2022 17:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647796284;
	h=To:Subject:From:Message-Id:Date;
	bh=D1CQOVtuW3TZrtQ4VeNKU2SPxjnATisbbSlj7YJEHmA=;
	b=Mm5X/BT5/UnuqLRWCIfLoN7DR+7D5j1GheoS2WQjpSNcF6Wr8F5XA2SlmdWzr06Q
	7hQXq8Jy/DKILSkC6MQJA4NTpccap2Oo6T/E5QjI+k07zh43UFjmScalNYkzpThXybq
	SXmt+PYEgW8KNjLX3veDZ6p3eP4sa6cDpUJB4dVs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647796284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=D1CQOVtuW3TZrtQ4VeNKU2SPxjnATisbbSlj7YJEHmA=;
	b=IJfeWh9ZG4XcO4GLsm2nPXBec2+dPk5YzvczUwL0u1pPzZpNQdxblRipBwAHhYZi
	6fA9EU9ol2oEI8HL7+brJmlWX0rLdpWjknzDNwCYL+MjuxAQ8FwPY/PCBFshUFoxUAo
	wO42G76ibr2NKtBhtTz+aGxSXUZKyRIdH110NQ5s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa84fed45-f3113f5b-f115-4962-a136-62298abb8fd4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1ffe54d11f6b8f89c9a77b6ef461d255a29acddbc18f5befce72a2f3ba5003f6
Date: Sun, 20 Mar 2022 17:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.20-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647796284
