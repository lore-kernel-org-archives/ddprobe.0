Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E65DA2118
	for <ddprobe@lists.linux.dev>; Wed,  4 May 2022 10:42:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651660978;
	h=To:Subject:From:Message-Id:Date;
	bh=5vVeT3ebGXjvrAutuNOIlXCClI8Pohij5TszamnllN4=;
	b=ZXKmp27rpBNZtmkMo4t4+MUGohnt5C7jqiLpAJ4TxN8UbW8v8mjq8gkRMZI7gCUq
	0AOWDwqj8NJLvZq9yc9I29cQywIF0iZNW8ENwjC2CMdLCAl7J2fvT8rPDNKT7eM20Wf
	I/ssfawu2yszs8NHV91sBOun5Ed21okd/SthU2z8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651660978;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5vVeT3ebGXjvrAutuNOIlXCClI8Pohij5TszamnllN4=;
	b=aW/h3NBaLaszHDMIxTc/LLO8xy+JxB9TZl+qEvrQ1fGoTEl0oXoACiVp+6VIeOme
	QitzKU5fF47IaqW+YOPwIYNnQafjZyJaNi39PP9Cqv0IV8vIMAzNzpIR/XL7r7oJoaC
	39uC1WQmrVG8biLDD8KvC8kXVHF0VSDUM+vLAgRU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101808eaa7847-e25fb614-f4e5-4172-b49b-cb4c513f26b8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 45fd585fe7e0c7071951033ba0140b9de7b146e51393b2d460e16e63e51d4c4a
Date: Wed, 4 May 2022 10:42:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.04-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651660978
