Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DC267F
	for <ddprobe@lists.linux.dev>; Tue,  7 Jun 2022 11:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654600799;
	h=To:Subject:From:Message-Id:Date;
	bh=TQE/2Zg7XjGJeqtndOK0GeHhzt0W2jZ1cur0dLedsgs=;
	b=elXd06fPl2HWclsyRtPCmMzYFbYiA3jLXTfbgkrs29oFWtpKbds97G4CfSoW5Ywv
	Kr6FAc1bWMKXQNSts/9G4tZMDb/08NV9oWRKdKduR5KqQCm6PuP6hqUxOBsyKY6JJcc
	DKPri4rmrdiHgeQYAhVrJFz3UTCSMGam9Z4YFy0g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654600799;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TQE/2Zg7XjGJeqtndOK0GeHhzt0W2jZ1cur0dLedsgs=;
	b=Gb/xd8udyMcw/RQTwVFQFotjb3YAhFFudvSsY6XXDaTYucyZWRzxDKLnj5eJWQSq
	zWvOT2F5+o5bAkNE/9Il4RPyoYQweEHuE3t6RPD2ovj3XOZLovb4R/bTI/VtcvO0HYs
	vpFH9Lml7gL6PYUwu78I+q+mSWaEkS/U6b//Jd48=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101813de49400-50927a83-b3c4-48d5-9c3a-90ead21462e6-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 63f7d7ab08afdcd21e2883c1316766f9b19dfb445dede2657afac9350ee68902
Date: Tue, 7 Jun 2022 11:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.07-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654600799
