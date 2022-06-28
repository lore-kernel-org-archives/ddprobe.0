Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A5FD257A
	for <ddprobe@lists.linux.dev>; Tue, 28 Jun 2022 11:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656415612;
	h=To:Subject:From:Message-Id:Date;
	bh=UreLnOW1ZjYHe8+QRtdo2SbPbEfA1t0ig092e/ibym0=;
	b=Mgcx2pt8ke6RQkQcNw/KpbAyJlnyz+uS0OSsLLltYhoh2nB9pbYozZ5uu1n2htKZ
	SIenGiGNijxBvGFkcbr4Z2ULQMcB6kX9RGkYXLErHQnu0NddzaKriOMPrBRef5RR9UI
	HOI8/fNeIgUPMMRYJBmjrwpMzF74XWz3F6CKTJzw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656415612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UreLnOW1ZjYHe8+QRtdo2SbPbEfA1t0ig092e/ibym0=;
	b=acW2ifddgZ/E06YcHX2ZCi0iHFWQIMXYiuzHmIp60v03w9+P9KnM9B1XWqIAOj20
	VLXSLnOWjY9/sO8R1rraB8QN/cEVdgJITcckRT9xdwi/L/PZL9r4l7GI92umci9pgys
	HxjEDBcJ69mS2Gz0Cky+L9BrTdxmnwErh5nhfC2Y=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181aa106d78-7cf5d986-0d4e-4ac8-ba74-77f3a172a6a4-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04efd0f7d20e773bd7eb8a90f7e3bf3dc27974537676785c7c809186311e812e
Date: Tue, 28 Jun 2022 11:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.28-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656415612
