Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9AE710E8
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 08:48:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655887739;
	h=To:Subject:From:Message-Id:Date;
	bh=fP9UiuE+C55Ha/h5ioQiDXZ4bYs68T0I2a0jJHQ4cJQ=;
	b=AwujF21wFKMv7F1ePdrdTnrg5TUVctbZd9vZMcIA7OZDMLrwsIDG5vU/Dp09dAYQ
	/wjPjcD3Cc5BfZmSNMZKbuA0ij0/gwVGQykoRptY8YupKzFJN5hYPdx9zPIUybZ06Of
	PmV0EHbNDhzefLGQZhTL4jot+NW1Ng/rr698M7IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655887739;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fP9UiuE+C55Ha/h5ioQiDXZ4bYs68T0I2a0jJHQ4cJQ=;
	b=O0ZG6VQEgrMRNUN7zzWU6b0TNDGSKjGgo+zAJqkMUETNbQ+sYTT6Fm8f8iV38RDW
	ho7rmA8eh7ZtGeSL2xrsp7njBtOJLBgtHsVbuLk2RCysQJ5riELmdRPgSXJHvUd1tyu
	+UAnO7Kirh/OorV04JJ5K63m+4KTObLEu4vy12vE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818a99b96a-24b36ede-0466-4a0f-8cd6-6f61ddcecc2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 831c9e1a3544f5e64f0ab85bbdd821f8ec5498a17b22f4f233178ca9d074086a
Date: Wed, 22 Jun 2022 08:48:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655887739
