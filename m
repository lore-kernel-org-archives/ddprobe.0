Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34F3417CB
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 02:16:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656296212;
	h=To:Subject:From:Message-Id:Date;
	bh=8tsWbZnvJPSmq7TkjlLDJyLGC5IfF+veffbUR5gahTg=;
	b=M2DisdpK8SLnBY/Q1f+KWHApJlwK26ARTe7clC3lynQT4PpDIZtO6JHPUlMYIeF2
	sEoRbNYx0odLLf/E1lO9B06pvz8FIzThivu8Y6USrO6H7OBjG0wXQpOnQxvFPjfmXwO
	Zi7LUPGwRXcR3kKkzlPHX+HfqGTqbqivUykpYz3M=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656296212;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=8tsWbZnvJPSmq7TkjlLDJyLGC5IfF+veffbUR5gahTg=;
	b=KsmOmnZKSx2xJehFPi3vAOHgli19bqspHL1NhvdJ/Z5nCE9mQ7boizKEP41zFhHS
	/E5SrJPvn4p9d+KZ6MAe1h8h4H7Oy9C843hkOoKMhnBuWf2LwmFdQai8JTR0tV6XRbK
	y6+kzbfRT1RCeFdWKbWDXNAsQ53NcTxXF129RAlU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a2f2876e-5e63beb2-62eb-47cb-b3c3-ae71952dfe8a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0b9132d50659504807d625efd3efde1ae0a663e888f6639c3f8ab79dc75f1067
Date: Mon, 27 Jun 2022 02:16:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656296212
