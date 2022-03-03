Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 742DC66A3
	for <ddprobe@lists.linux.dev>; Thu,  3 Mar 2022 13:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1646313384;
	h=To:Subject:From:Message-Id:Date;
	bh=QXScAhJ1nEAaFyJ1UfSoGTgiZ4ky7R+X4Lil3IzK76E=;
	b=CRxCxzODamGyRc+iIezGNsaULFqjx4EKfJupLyRFSY5qwo0cf0xGwNx0CZotdH+i
	ZYl9taK10tIbkKtFOXUtMtSBBbafIogbagZ3dBoHOSCPTHQknAAAacRWuaks30hDiR3
	vqxqDtU0uvXfOepdDnnRvNWPcZdAjlxXsgzJhlGc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1646313384;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QXScAhJ1nEAaFyJ1UfSoGTgiZ4ky7R+X4Lil3IzK76E=;
	b=A81eSdbI9bE5oE+AHFTywE+KvDW6XuuU2N2rrgrjwyLMkUKDmiZZ2X8/hTeojtRu
	35ntvxIzxI7MffK/PRgCN20cjkdOrNAutrmH4SFSmya5qTOoPQwz0FcbVwHEP5SrptF
	bQWLvvijTeto/2NcyFvQDz7XRAHH2xWaGmEGoE4o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f4fecab59-8f5ce093-3f1c-494a-b018-beac524bc2a5-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 37b5c094f7dbc96411c494e10a5215452f7f26c63f93c94179f28814940a6016
Date: Thu, 3 Mar 2022 13:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.03-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1646313384
