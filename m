Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189BD2C9E
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 11:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656331012;
	h=To:Subject:From:Message-Id:Date;
	bh=FWIyJdwMzezZ6NuHbpJKrYkQXU/mgWhlMptD3DCxJHk=;
	b=dQrTJgg5XxIoUV4qMnN8FK/HXwd3nIwGkqQ0MJk6WU3RH1fklZt5aW45e/ZBtlZK
	TIUtEwkNJndt5FLVMbT8jwhSLC24ZPDqBK1RHLWoh3sDQTk3fUfvLZtwGB6p1YssD9R
	gzapYX9CBfGhWYw7H2VWJgpPJmqk3OaoqTtNX6+Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656331012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FWIyJdwMzezZ6NuHbpJKrYkQXU/mgWhlMptD3DCxJHk=;
	b=c9+u+OtsptFfR4Lt1Z4rmCqPMaONfSqIX2kxpv/19O5QBK1s6u5CfBdwbYifbEqJ
	oF5z1KUS8d6deoxzQPUlyIzNGK3NXJk9z15NBMG3jCefRFHs9RjBPiQE6iomebbO2zC
	fmRnz2Vp1cB+YwXetulI94zG+I5W9+2yL58w2EM8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a50588d7-d8741a54-d532-455d-8514-5eb7e5c54e07-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 349d6c1cd711446852ea0ff572ef6d49f31b1a10adda419e558ee194b4071c71
Date: Mon, 27 Jun 2022 11:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656331012
