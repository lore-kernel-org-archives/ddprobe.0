Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5BFA7A
	for <ddprobe@lists.linux.dev>; Thu, 17 Mar 2022 08:16:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647504985;
	h=To:Subject:From:Message-Id:Date;
	bh=I+YRR+FeT/RLrF0zr5Uyc2Cd7N0L3sS8uaxRkKfmlR8=;
	b=Xu6sPIzfPIbcXOPUdTZ6pDgg54Fh4EvtPIhJfCIhFMvCVYcvi6WdzUIgO6pNjcnV
	nkTbmKY6eg8Y+IBfB/QfxOVFVPbgsY6To7ABVSE5Ty7FMJfzdQDg0gt9rL9qDJJ2kSn
	TZGTAk1LEiJ7fTUGa/AiTvsBBGP0CZLONMgDEqlc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647504985;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=I+YRR+FeT/RLrF0zr5Uyc2Cd7N0L3sS8uaxRkKfmlR8=;
	b=epczHNMcC9a1GuWZuHO4L8k1aQ6YjVhnV5GnP0tqO+TrpDgarObnBsK5WhBy/B+/
	7mHe6i619uxtWOzlrYeSCOv5oFvtwUdcyX8ET/sxIDmUIF3hImu/qLEQv3l6shfdX9i
	mPRnZ7sw2X7ZQY4a8Dm0A/PQM9y7jmJvr/27cTNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f96f30ab5-904b364c-1142-4345-b8cb-8662bef4b146-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3c0c66de2a6eacecea47ba6f7d61479c5ca2ac60c65b79481047a7019e945348
Date: Thu, 17 Mar 2022 08:16:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647504984
