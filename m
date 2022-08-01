Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70B6E7F
	for <ddprobe@lists.linux.dev>; Mon,  1 Aug 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659370852;
	h=To:Subject:From:Message-Id:Date;
	bh=7Il9T9HEaPLp1hOCCO1PumixZxacR5oszxthvuYs48o=;
	b=fuBWZ6olJrtOYk2kiafhzdNsweBFSqkdWIY7/KdMfrKUv93ANSHLmeVTOfTThll2
	RUmkeMsfBm6cP5BEt6bysSO6EhX8G/K8I9tLkwyV9vAhYpxsn/C94UgtXZxHfp4tuXm
	EgjhZqZSVgJxDxygyXloLeEabtgKT36v0zwcfmM0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659370852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=7Il9T9HEaPLp1hOCCO1PumixZxacR5oszxthvuYs48o=;
	b=eZWzmK2fLZBDEeNhlokhD8y5sgSGxKEmgmEBTTmPTkRsMz2k6BiLuz68LCMHh8r3
	0Rm9GyVdjExVnr4+dO/onl5UQaV6/1fjo5zYQreTm5EDiu8vv3n6wJKW/pJm9aoZ+lM
	mX69DMe04iSCaLBo+zo5hYhL6eGmUCiLL4X/n4UE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101825a35d0de-3369ec4b-8856-4e60-b3a4-44135a86ae3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f808a7c222888af1debaaaddfdb729210638e620d45a2dab0136e3f6ad73a9fd
Date: Mon, 1 Aug 2022 16:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.01-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659370852
