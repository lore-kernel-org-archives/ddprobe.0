Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF8FD1851
	for <ddprobe@lists.linux.dev>; Fri, 29 Apr 2022 18:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651256638;
	h=To:Subject:From:Message-Id:Date;
	bh=+nINOgOx2cnAKlbZ8edBzbuHX3JcZOnsK5xqooNOs5o=;
	b=ODT2yNnn7NJsN7+opE+DSo9JBm7lVbxUOtwrRMLaDZon5W1Bfgq0ZbDnTk4CMxVG
	1zNCLM3Pc7uhzm5Fd648Q/SEF62FxuPyDDWKWjQcV3arwy4kZbG1ccdwzuoB803QkI4
	fz0WMMqZdBo7sgpWTP39bOv6GNaCIyzoaB3Ou/Oc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651256638;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+nINOgOx2cnAKlbZ8edBzbuHX3JcZOnsK5xqooNOs5o=;
	b=j8XbF6fERhgV+MGrwQPg9rDHY9bkbxaBbhq+N4ctuJ0/XYy3M6L3k8kXE3/QCgIA
	RQjfouW1p0jR9zvsQafgAgFnFxNH9MaqrMUhZcOtgvZOJxDhRz34RyMHzumdkPLUMpw
	9M7ZSyyNAjRGdChzFM21LqZUj1lHqwc0pUcI+MJQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101807690bb1b-b49de547-536a-4f5a-9b6e-69e3ef045291-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ce64f4d4f9f8bd2b39d29d543b9f1fe421dd06ab363dba722d0770e10e1c6ad6
Date: Fri, 29 Apr 2022 18:23:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.29-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651256638
