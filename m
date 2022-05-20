Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2207C7E
	for <ddprobe@lists.linux.dev>; Fri, 20 May 2022 15:16:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1653059759;
	h=To:Subject:From:Message-Id:Date;
	bh=fm8oGDnSYAP2L4M2FnzQQDe8Aw0tHTqMdZRt1sM74F8=;
	b=VhH+mmTU21cGscOygYPUNYqGeZ2Lg9JOHjP/xbLY6gA0ET3bpTogO4K9UlQVAUB+
	JuDBAabX0NnY7jrXoqT0PH+8/g/BEqJkebovr3ovCNSUi4+zQDlz+D8AnFzjy1W2kKR
	KTpEZAQI1qG+afwlvdGyKPvBGqLrrjW1beFtt1G0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1653059759;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=fm8oGDnSYAP2L4M2FnzQQDe8Aw0tHTqMdZRt1sM74F8=;
	b=WIL3KZ1jMCxVSHb0fuNjcL95oTO/qwpz/L1C6JhG8TvK0EcBTSqq+cZ3cJRnBkv7
	Zmksq47e2AwahcOcwMUGKkwmwBjsW2qDVD7E7bHo2kAiWgdZp23h5PZgVnZXZ7JUn9x
	/4oTG8pyMZ0TrWNYu3lS/Vu5/FXEAFPVeNyt4xlQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180e20a2cd8-6b7c799e-44b6-4c91-996f-7b436f360ad8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2419bd34625faee2632135b29452f199a4ea34f14fb2f160a637b5fef18fcdc5
Date: Fri, 20 May 2022 15:15:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1653059759
