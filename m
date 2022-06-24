Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 223BE23CA
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 11:36:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656070612;
	h=To:Subject:From:Message-Id:Date;
	bh=7ARRuOlvKU7s2qT/tKFP5RpyJnVWBi9LfpSwaC980dM=;
	b=dnAAvKbxtWYdDcXvKI5AZ8qGKu5QQQaMjFj5GpEe65rUtI96bSFX7ndxyAX8maSU
	Cjp/fbd0J4iUojpebB7uk49FlTaqLvz4ubMgJzeO4T7hoYRJO1H1/Ukbz5sz+okhJm9
	Mdpm/9fW3E2PfbhGkak/wLn8mjyeORL9rERv7lLo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656070612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7ARRuOlvKU7s2qT/tKFP5RpyJnVWBi9LfpSwaC980dM=;
	b=TnF16NsBrA3DQbe/Hs8JvHTFA/P9fPVl4DkRf0qCXoceNdohBY08MOuTYtKGN873
	8emukR0QAGe4jFOsMgkkudFmBJ45/58+o4CKWc2nXv6EDZSargH5pW8qtT405xGo7yR
	YsNTWIKsyS3CGNbB0VSAclwLwITepQqWTNR8OK0Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195802552-c8bd9b39-b83d-4468-93b9-b6d62cd1b0f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7ab7da1e338ebfcec50125f9db3927b17b669ab166e36cf57e2450ab3a971d6e
Date: Fri, 24 Jun 2022 11:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656070612
