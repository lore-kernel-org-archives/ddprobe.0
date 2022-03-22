Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586596453
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 21:36:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647984984;
	h=To:Subject:From:Message-Id:Date;
	bh=WIeku1yTH1JwAxe5csq1aCugsHtuT6Ch89FrD7vkNP0=;
	b=Gao6c0si7rKu2FDBrvVYRyppqEc0MPc7X2pFWCVf8sMB2dWCU9OEySNzHvGC24vl
	4Fv1dcGTJ4V7237qlkzSoqd1NBhAddXTVOdIgc2kdkJ+Vv6PSU5w/1qwh2x/m76qSY2
	IcfbvDjyRr9NvAgg7LBv8wqQKm93r8eERgeFs1+k=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647984984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WIeku1yTH1JwAxe5csq1aCugsHtuT6Ch89FrD7vkNP0=;
	b=HAqwJSqC6rzQbcV+W4N3+a96ChlM74IV6LHz+mn167OVa77vhE58rVZ1jtRa7sdd
	rgNrKGXePi+NiBPrdniVmRuq5Yv/kBnr6RQO7oGlqpJWfhzScYw4FSI0v7JZ5eapktE
	B0fvOyfouLwswBPptzCMSnkIbpQ7tJ5UdWXbc0Gw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb38f42c2-9680d543-c72c-426d-a523-7581792c559d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4c3fa3d5159cf41b0f8705bcc55a8206d9938479b7a3617bf7e2ac08162d108f
Date: Tue, 22 Mar 2022 21:36:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647984984
