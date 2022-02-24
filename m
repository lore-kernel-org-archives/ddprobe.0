Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 935A61878
	for <ddprobe@lists.linux.dev>; Thu, 24 Feb 2022 13:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645708884;
	h=To:Subject:From:Message-Id:Date;
	bh=kXfjU1qQh8V6RBr69MC05PgZpMbNTLhTXQ7J8e8LkK8=;
	b=RJWYsoO/qrzZ+ck9V44jnXlA5HtEDUuibaQAtgatGSNBWo84qe7BFgBUiL9ADbM2
	awthrOJqRMJG1vW706XvPVitpTktC3AuwMKr/9o00KjTKjahKqV/kCJrpvdlJ9eQ/m8
	xYkLqa6QnoBPFOD9L8dW0DcdaVD3u44u9i35F8X0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645708884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kXfjU1qQh8V6RBr69MC05PgZpMbNTLhTXQ7J8e8LkK8=;
	b=WcVYPggmWeW2LN66ovNsYvaTJZWqPw/o2EaFIf6nkIm9bu5xkTRHTSX9Aisv0ntQ
	LTJEp9MBAMIctLtIMgNc/kNKB6eLwClNFkx6PPHGIb4IbI1bVHoL2IFeirxBcBXtK6u
	Jm6ojODTsltu17/QxZEaQFxKEJL7qlHXmQEZVuE0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f2be4bb0d-e99b22a3-ba2c-4cce-8bcb-26d08b80fb06-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 49fc6010a02bcf948f3c4df5287fd265673403a1d7ed19305a2476a9107a0617
Date: Thu, 24 Feb 2022 13:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.24-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645708884
