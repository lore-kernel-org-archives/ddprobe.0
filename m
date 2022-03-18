Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCCC34C60
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 13:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647610284;
	h=To:Subject:From:Message-Id:Date;
	bh=km4BqfBeSktHf1M9T9i0ZjTggzQS0SzIcIg757b141A=;
	b=LlqFr8mjUp56jlT2NyqaAUkaBlpI8cZg+zfen8IXqtKPuaJKrkrDotujs2W1e0E3
	ZGqsAYiKAh0vuXji9uB3poCykCx8SPwPf/PEYMIUcvHsVt0OFaIMcV7479oh6wjSNtw
	soIMzMd3XQBAlg/avbMmLCos8FMQvCZX3we3d9Fs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647610284;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=km4BqfBeSktHf1M9T9i0ZjTggzQS0SzIcIg757b141A=;
	b=WKOvN/2DYau79zFSfaVpkvE57uvLOac8Dk/1NYiooS6CPa3FtF5By8qHN8r43TDm
	UEbgbL8DUMfF9nx6tJ/ejhckCiOJmWQfuhDh/89UH2+SGmLg+xraSzAkGW+TxoFCNS5
	Kr1Jkibiel3XhEmtrr33FEMslWAsnlUzTgAJLFkg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9d39caf9-0644b35f-9959-4870-bbc3-35f5f5cf54fb-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: d2e7a6d4e06c6e43dba0be5b146c801d012cb13103bb0a7efa8fe0579d7d53bd
Date: Fri, 18 Mar 2022 13:31:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647610284
