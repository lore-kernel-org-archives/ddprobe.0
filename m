Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A3C597E
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 06:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647066984;
	h=To:Subject:From:Message-Id:Date;
	bh=62wf6iqDtpvK9S9aeOTEsrsFu3qTff3glRg4V6tsUE4=;
	b=X+voIvtzcKTANn/T3n14qsKs1OlClPJk3B9nuY4p2xf9q6sJgANuJd08NEqxJC+T
	31qOhRKp0ZfWOfP40GHMIi0x0kq8BKwIUhfZTYBZ6/36Fzk5bP9TecDqqtOSKJ4jPVi
	P0arj7CsFVkvgoLSLU08Ca/S3E9+rRQMrPPGJJ/I=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647066984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=62wf6iqDtpvK9S9aeOTEsrsFu3qTff3glRg4V6tsUE4=;
	b=KzlQpxblXoHj1VlyUeDVos8gg9wQ6Pp7DZPK/Y2Vmn44XvwT/gAgvQCCBMnQN6Ta
	vmK0stEO6uHBNuQnDqT1+mtzhSzGVZG2XPWxj7cQb9GJxuRNfh8O/m1lZWtsE7LhxcW
	HKPXJqvVTd81wEFQlBWeTlEAeinXAGztI8QH16YE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7cd7b150-d0eca99c-f693-4119-90e6-d71ada852938-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: acb45c16aaa1d4f42880b291a2e5cacecd750deea7d307d6867a24d94ea93855
Date: Sat, 12 Mar 2022 06:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647066984
