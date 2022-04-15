Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE567A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 05:17:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649999878;
	h=To:Subject:From:Message-Id:Date;
	bh=X8XMHOUcQbMkB7EqMEa5l1GiQIykeFX9+9CpxvboKDg=;
	b=g+sI0B9HgcPeKV/tVXLhMWWmf6mQAytKsYF827btyEzHlnmxK0uCBgQfcY9uOgok
	yxrZX69fPT/Id/k6HdDgqert2/moay6ZCp+eLN+hTREAZoEQKtYfqoWaTkgKWbLAbnj
	sbrDhZDI8jkHEm2gplWRApwNBO7qLBarjgXYwnHE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649999878;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=X8XMHOUcQbMkB7EqMEa5l1GiQIykeFX9+9CpxvboKDg=;
	b=bOD+RkCX3o9lNyrC17WLEZK9D80UZsBHaQCfrbJaKbC9hZRvNId4v0ttO5wfHa2n
	RkGVGqay1ZblAN/u8Abhw0VS9gVhBzOX1FfG2qMd5dLuuIm7rqa8P6fINQ/CQf2sW3Y
	4sTwwAewPCkOkcElUj27gF+hBf8QjkM22AEU8F+Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802ba8189c-3bf2a3ea-1b3a-4611-b647-fdfaf966ef2b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8e0c7ecf06805cd84e268c371789584d411babe670f29c1642e656b8f119672a
Date: Fri, 15 Apr 2022 05:17:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649999878
