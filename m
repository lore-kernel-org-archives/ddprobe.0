Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57A3D7A
	for <ddprobe@lists.linux.dev>; Wed, 27 Jul 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658932852;
	h=To:Subject:From:Message-Id:Date;
	bh=+Kv7JAa9TVJoK10sFNiLfMpD8eYRj7pVttVxhwiCwL8=;
	b=O2pR1LqS7XqKxVWZEUwXS0AnD/UMQRoLNXNufFGe9EPeOhEYy9RRIcjF0wwX092T
	lhbPSBheFnhyX2iYFLDZeviWVoOCSUf5AO38ayPwnEK5FrnA7GHVW6aU43aEtF0ZGwh
	ULJjCL6q7da5iWadYE3D4v/ELhpf2/g/3ukGYbBI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658932852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+Kv7JAa9TVJoK10sFNiLfMpD8eYRj7pVttVxhwiCwL8=;
	b=NcjghFlYjqEJLF/q92D0B8K/mD6VdpZlhlhMKMG4ItVMc52okVXn2H8T/aUSNCvj
	CFYXBxm+JziiXoMEgk1HnCiVQKojYVoLOnu2BU8ATDwQSE+m9+2jzLAnPW+jw5m9lWT
	jvhW4F9Gmam19eHJJ1vzlmUnseRarEyLRhog4GmM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182401a7744-8977bba1-3c8a-41d9-a5af-e54b76bb1e11-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e9099460cbfe50a1c336f82c99d33adaf889c463021804937eef161431db030d
Date: Wed, 27 Jul 2022 14:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.27-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658932852
