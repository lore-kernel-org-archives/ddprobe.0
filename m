Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361B87F
	for <ddprobe@lists.linux.dev>; Wed,  3 Aug 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659489052;
	h=To:Subject:From:Message-Id:Date;
	bh=inSNJc2ljV84uJOrM95CNMUXwMxYE7sQx2pyHhcHWdE=;
	b=TODzG+4Lnx6UBEI5tdy8hQ0xD7BHRW9ZCLpFd87qPCDtcwQ9scMvCeBx5ZKnfXyB
	pbj8MFrwtChQkqrWgQggatvzTvm7GgKSL7RNWFkg8qGepwAVXP28xPrLhuCbG1Kn+85
	oREtfOk7H+kYbwPZXOPARmYYpO7ey4IpFwJNeAlU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659489052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=inSNJc2ljV84uJOrM95CNMUXwMxYE7sQx2pyHhcHWdE=;
	b=j7OD0gepHCq6L/+O1C7igBIHo+hNR3NPtzU6WFRSXz0BxBQ+5y19j86wSMlMRFoS
	2jlzBpkkOxJMX5TOa59uWbozMoBfpSpW9YEn96jdwY0lBuI0FPR1Wkb5PDGmrFCTVnM
	4YAJGkNaayBDq0+oj4GHTr0ld7J2McVYUA5pIP4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018261416779-f07cf15f-4257-44dd-a26b-ac543dff7cd2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5e6b49e7f64a6bce0f63365c0e64fdebefe2dd43d0d977d9775d6c736db0e8c1
Date: Wed, 3 Aug 2022 01:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.03-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659489052
