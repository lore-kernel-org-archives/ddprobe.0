Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2F11876
	for <ddprobe@lists.linux.dev>; Thu, 23 Jun 2022 09:57:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655978219;
	h=To:Subject:From:Message-Id:Date;
	bh=Lh20cmS89oIknzIyx2JXqnWnN5zHHATkRRd77ysD83k=;
	b=Xkzv79SUwvRWflnbH//YH5vbrqqvyNjxS1jIMqK7qG8nBDOYWIYJrvnn4JqDwhqe
	clkt3SRdrIKTqeq2xZ+fm+AQTdLS3qRVMrzjYCaqejO4beVXTC1F0IYgObYXnfnbkD5
	1x+wMMBsgxtfqW7rqaexxNFtCgu21MirzDXTTnPU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655978219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lh20cmS89oIknzIyx2JXqnWnN5zHHATkRRd77ysD83k=;
	b=aJc3bHtOap5N9fsHk1RyBNb8iwP0cG+tQPEGfW2+CEJVZGj3SHtrT/O7cPYcRvgK
	Kbply7aBr/EGrHmRQFw18RCPAAI/Sa8P1caRejPW/wXG1jVNFuxKBDBySUfErEHbHex
	3ls5jEgn7sJ0g7wEa2gmIPXVVh9GrGf+5cFOlyK0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818ffe56f1-10076b44-5def-41a4-9c01-d68dc64e1334-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: fdbf4b611630d90cc708f91ec2003a89dd833e22f9d458043e2fa895befd0940
Date: Thu, 23 Jun 2022 09:56:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.23-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655978219
