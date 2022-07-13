Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DF744A0A
	for <ddprobe@lists.linux.dev>; Wed, 13 Jul 2022 19:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657741612;
	h=To:Subject:From:Message-Id:Date;
	bh=P7ywHA77LezHJH+gsGNYr7w2vv/lgXz3SKsfgTyZ+1o=;
	b=h4r+REuUdSMkyinxupH8WIi2jBzFTXrf5miQbvRDSCvu6rF8+ftuvZyhplJXRG4E
	M6oi5eTfEFij1+wMhlkVXRA3xwQasqjXioJ/Gf6bIkOqe7ctQBZgZ0NC3MMxwLbM7PL
	c9NJKoLaUX6ghmRw7qXVy8N87PNsxzSqEeRpy/4U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657741612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=P7ywHA77LezHJH+gsGNYr7w2vv/lgXz3SKsfgTyZ+1o=;
	b=E6RmMCFWXB2yYqxQ5HENOqxLt4lgxc3mJY027/RVcWOVq2je8CIW06KBwyVzJtQa
	7B0myV/u3W1jNuMBIlxYZixD7sX1kFGnjwGhbMjMu6Kzc/+acc1q7RSucS9XUEWkXTB
	U5Y593/2LK1P79dOEb69K9bY034wBwjAfgNCmPjU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181f919952c-11ceb538-8e09-434e-9c99-85dba9ef7a0b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 87182db56fdb5cd5774580aa6a31e9337f5ff9cb7be4f377fee885fad0d32ece
Date: Wed, 13 Jul 2022 19:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.13-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657741612
