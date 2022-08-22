Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549E84A32
	for <ddprobe@lists.linux.dev>; Mon, 22 Aug 2022 20:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1661199052;
	h=To:Subject:From:Message-Id:Date;
	bh=eJoni87CT1rzPiWxXxWOpcIJR772YvLug8E2vjCeMAw=;
	b=AcwqKc6k379ckGERJ0Fds6E8X0A5xWi2U7oYAK5xcl6j+cBhdswtV2yDAC0WqGG7
	xQvBvUF+S+sBRmR+Lx4BPCFWQ7DABiRZiuSCE0hE60DtlHcWh+nxFsmhfNAgQPFn1bk
	qndGhwuH7MDBIyKHan1g6TCGxVR2EeziINk4AJ7Y=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1661199052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=eJoni87CT1rzPiWxXxWOpcIJR772YvLug8E2vjCeMAw=;
	b=Ocvg+5OBUsuJ8XCrAwxRMBFZFm3+FZ9eU0iqudtbbC/XCNJSx+VVxfuGPO6md8nP
	5MKOSo8N4NJ1yv8bRGYYz0YjF/bbtzYN0v8L/pEe1zGansvz2GAsZ2MRRfQHa2pUjgv
	7tQwHjXCB8w7zvI8gNJj4DChPjApBjDoxr532FDQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182c72def2e-0eca6491-c6e8-4b40-9b2e-2eff4685fd88-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 69f3158d6f5d126d95c56679d2f3926b8ebc7784720da6857a9a56066c5960df
Date: Mon, 22 Aug 2022 20:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.22-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661199052
