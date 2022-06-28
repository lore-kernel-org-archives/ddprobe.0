Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291D57A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 08:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656406612;
	h=To:Subject:From:Message-Id:Date;
	bh=GjGiDYro+v3aRpyTkoJDsgKGl+YZWEHhTj8heoCpkNE=;
	b=Pw0O0rK0zbMGvPJXU0ouC4Cz0aXpFr6wRPigmcZWf9VXujWqxVNMfMc3wHG9ELBF
	PGa0gfqIsCMP7qXKJ3mEynEpczC7v35KF0gVVxPsBu8JoEYdGROYCvCOjvX85EyQdrN
	ggebYrQaTvX3qJZ6N1myktEzFGN95YLvZtKkOhvo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656406612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GjGiDYro+v3aRpyTkoJDsgKGl+YZWEHhTj8heoCpkNE=;
	b=kVX0IYcxOCFxTzC3TWV392HyC9VOsDh2quuC5zx4V7akXEhsLngg8pXfClIZfXBU
	qykWmZX9AaN2lGH0acRdfFNsiv94lYE11LuIH3w59jLWXCx7zkr7xH1lj4tRqw2wljB
	44hkg7xu/qRs8DiAmUg5QEOtOmmhuYY7/vyfniFA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a9871965-7df3ac2f-4ff8-4e2b-b91b-cc36cad047d5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1b66fc405c7fd4a6b01270da918c3e411355939948313b2a4f0850c3ca607f7b
Date: Tue, 28 Jun 2022 08:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656406612
