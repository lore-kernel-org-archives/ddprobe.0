Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DC764C67
	for <ddprobe@lists.linux.dev>; Mon, 18 Jul 2022 23:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658188012;
	h=To:Subject:From:Message-Id:Date;
	bh=Rr0XHrMX53hNbovJ89Ag3xp5HZ3y0jRo04xblQlnyXU=;
	b=Aos7FZQa2o5QA0vIhoBzXJoMzffrCzfBLJRb3nqjeee3IEIPXkD2DIvD/okG0suM
	dvlGj8ovc22curB00/s+frXIZqbWKZR44AZSb19DQPo5hKDoJGMreQ+pJwYN2AT6/gx
	CQo/hHlY3nLAJqnS9UOHQk1R0hW8Y75hTBtVkn1Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658188012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Rr0XHrMX53hNbovJ89Ag3xp5HZ3y0jRo04xblQlnyXU=;
	b=ByNLrZcYy/EE772Coo7U4i1sHH8VOZzV85WlNZPIw2664L3a2w0mWThhpdZP+gL9
	9qE0BOEnG1490EJvnG5Q7RSQX3MnihXUA8f+/19rIw1psTAx8i4XSNgq5KubrpHEshv
	otqiVZo+Tmy7MKzsWn9/oO4wqahdpjSmCcwPMuC0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018213b51b3a-8c0771ef-8121-4bf8-9812-d746fa4e04e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9bb5b24fddff7b53c7e7f9534209d110e3180a91645d05097b0ad639a823ac91
Date: Mon, 18 Jul 2022 23:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658188012
