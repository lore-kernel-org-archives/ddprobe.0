Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44F8820F7
	for <ddprobe@lists.linux.dev>; Sun, 22 May 2022 06:13:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653199979;
	h=To:Subject:From:Message-Id:Date;
	bh=3jnET2oeSUyb9AfAImkCkpxqvTOPd30rnUcfqrdy6PU=;
	b=Yu24Hi2E7BNDDWQa4vFBbVIDSznxWyaaKGGtF97pCpdEgDYBuM/Yd5af2B9eXOmY
	jctAmNjd/1AVbYLa+NKkhwjpZ99eRRwrSv9M/rGaqsjV079abSxFnFX0URDKVfdM4Fo
	Z5bBatBZFkAa1Y5wFSph0ws0JBANsY0iN1SPU1FA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653199979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=3jnET2oeSUyb9AfAImkCkpxqvTOPd30rnUcfqrdy6PU=;
	b=POVFY56+hX6cYYArURIW9BKQG8SexKLgOGTW0V5vzZJpWVC00jcnhIhTuXd1nfgt
	jR2F7pPUe6FbW6ahJ7rtLJ5Vb1fGJRLbn6kcUJnFmZQaker8643sUbPg7jlDcyjUBi4
	eAG0TE9RzPcPRedB+DRfR39hTcv7vxOkqDBM4W90=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180ea65c3e5-af8e4551-35ed-4fdc-8b3a-152c0f400778-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 683b0ce267bf36c7ce1bcd328c2300bbe3ccd7dd0315ffdefecdd72fffbc13bc
Date: Sun, 22 May 2022 06:12:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.22-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653199979
