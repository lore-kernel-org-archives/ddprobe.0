Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCD824350
	for <ddprobe@lists.linux.dev>; Mon,  7 Mar 2022 22:01:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646690485;
	h=To:Subject:From:Message-Id:Date;
	bh=Ys9w/SlimsQsRIk5tn1yLMfSZZB00WIAp4f0Qg7hlvY=;
	b=E2ggKUY//1l4lzd4+/k/fILuzGHMipIdbDld9mZFtLKzwJxWUqvGzX9UT/BL+FwC
	E7z3jhsfkRYN3/fZGFqPWnkgG6xj8NWIN+mCIYgpLZQa5Rm9shQ2F/A+oG+5frAqBAI
	gGrxJYWjY6qQY2PpkIYa8lx69bFGqgYNmKZzsmDs=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646690485;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Ys9w/SlimsQsRIk5tn1yLMfSZZB00WIAp4f0Qg7hlvY=;
	b=b71WupbrXUW5khJEHtgEduVSAhQ5Eqi6NFkMKo2btkbv7bLa3fSqIdUVy7904GUQ
	CMIyf5eAk+tRHu6vMoh3EHB9A5Ia24SmZr6XRziAzQJLjNYyKbVYfcHFSvbbc050D5Q
	FvYJ6Han48cB5xo7bcYIG1vEE5mIsufBcbTd/Opw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f6666c227-6f125f5d-9312-4787-b7e0-037887ad3f78-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ba71b5b0f54ca60e4b60288e99384cc5fa64c88e25641333ea08f2154af5b9e4
Date: Mon, 7 Mar 2022 22:01:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.07-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646690484
