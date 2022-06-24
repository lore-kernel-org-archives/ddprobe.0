Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99FE37C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656061013;
	h=To:Subject:From:Message-Id:Date;
	bh=mHyREp79P09gE8av2G3gMIAriZWzDFv8A8xpQgb5gQs=;
	b=eQRfpPxBl291EPuWKafAH8Rm+HXrs/2j7TMhA1IoL/9JprxDEvCsxc3MoMWheAaN
	NQ5yr/xXnJPYMmqypML16JayPhIHyBukdBM3qMspToLujFU6GLVWNX4FxhGvORmjKrH
	pWRpQ7EUTRONH8+PfdzoUeJorBMg/hUUZXc2H7oc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656061012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=mHyREp79P09gE8av2G3gMIAriZWzDFv8A8xpQgb5gQs=;
	b=cTQjFbUHPZsS+75n/oJJ8j/XSf9GK80T0qyINMDUF7vzlWbQcWlNnJwjuBZ1voyC
	nL2DWnWC5nvy+xO6Ki/x0N4NzHzwDXBlP5wLtiW2RB04vXTh/GfJxKRaIzegF9B+wZH
	+0cPbL1S76tm528d3LlnEmxo/iLTeF14LdNS6G3w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018194eda982-dc625b38-b69e-47af-a90a-03a6ca5a43a6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ebb0c658877efa1d07498e60882fe520f473d465fa173b79b46d2d73481b792
Date: Fri, 24 Jun 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656061012
