Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2ED623D6
	for <ddprobe@lists.linux.dev>; Thu, 19 May 2022 12:28:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652963339;
	h=To:Subject:From:Message-Id:Date;
	bh=6a8EaVo0PPU61lxjhGXLP8wODdazoULpJ9MoIK8jxTM=;
	b=OPPRBZvS3qBHUalnEEQNaLdY1ibEho3lfxYHqycdALPacRs0wWWJJkh4l/f3/J4d
	uBqhLZhmScaagDQucRzUdHZ9kXAdJXjvi+ufp7FOcmpifA+z9az4E1LV4fH6GwHeN1k
	Asx8SzqIqkL40bbt2MHVf/MJ5nh4SeLoKid6X6IY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652963339;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=6a8EaVo0PPU61lxjhGXLP8wODdazoULpJ9MoIK8jxTM=;
	b=RhpbImLlL6kR7p85cGsKWNjoKVF1i67Z9OW8oSbGZ6Jl9fQKE01sDUZwWBlZvzBn
	CDxXYDPSc3a34w6za0dO/Dwz0MtPU2wLmvza3VQdZL8KOSzLJKXLwzv583+MP9/xkkS
	ajfnv412jWxRyyDL944VSE/NPn9pWPT/X3KfFJ3M=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180dc4aebe8-30073472-10dd-4db5-9c33-5a6027ba8b2a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: eb701784e0ac5222a78cdfe842523e912f99294aea2a8a11d9cf01a4e943cdad
Date: Thu, 19 May 2022 12:28:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.19-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652963339
