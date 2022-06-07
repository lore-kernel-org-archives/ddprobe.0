Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7246A7F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 00:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654560599;
	h=To:Subject:From:Message-Id:Date;
	bh=gcHMM1K7THS+abZ81ifoj00vWDPDIYaaluSF87ylt9w=;
	b=ho4S4Qg60bAwoYgsPYCKd9KQdHcFFE7jX+tr+U35hHkX/MGLIjIWvnsCiyXZ5zJy
	P7cByCcfUrjzB4ajiGZRWNXl5bQjw/H9u1mPbafyRcW7q/C2A/3w/xHNBpdeKGsZuax
	lKbSoYVH7ZPCFQPfW7k8NxGq4Bb2kkDY0RKL5uWQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654560599;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=gcHMM1K7THS+abZ81ifoj00vWDPDIYaaluSF87ylt9w=;
	b=fnFznpEov6u/t7KqFsqzmoDEq+WijRwGVFCSqndvGhy3x0SFr+9HHXmZEREvFMnC
	IbYM5dGearJfgC6AsIW5z68AedculSYbL/0fM4erstoz3AaexZXjOjelbkRtU2rj8kh
	gAQ5bzdWjm2omInWRlTXNo07ZW3VA0oFrtaOfoZQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813b7f2ccb-d65efbed-a252-456e-b3e2-e28d7d082c41-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 162c69da15f4c710d259108c74ee465462d15ce260660c90fc0e74ee1086039d
Date: Tue, 7 Jun 2022 00:09:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654560599
