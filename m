Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D34D1FB0
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 23:25:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652829899;
	h=To:Subject:From:Message-Id:Date;
	bh=CGSkxgSFsb3JAtQNJKQvNz9bRxiPZ97qFcTWZmafz5U=;
	b=cJs3B6gfQRkLPNDgyCdG5915WV/gjint71fzFnb6G7tRZ3ToMPs5yt0P79H36vmD
	KICakimnL1N2rRuhQo5SQ3yCM8rcQYDWhL3XPiLJqRhkHXRJvSJVevuMFahZViiVbly
	Ren55mFLBCLO+In2MtoOF3rgjqxOGmYHS3s3qIxw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652829899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CGSkxgSFsb3JAtQNJKQvNz9bRxiPZ97qFcTWZmafz5U=;
	b=BW55L/2pBC6oaN3M8ty/aMpRR2TvJQMvdUo3Y4hhrf+xkDbFjZw2QngPGsYlL5hV
	tqa5Sz2lf0kB1jF/LlNERh2FnYiU09ki6uq2n0d1ggx31toFXPaKZnC22PGmJ71XvST
	Vvb4dWwnm++NcHu1HVzDGiiE+2w9WVWZrbOMujjw=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d456ca2f-c7c12ba3-f8f6-48d1-ae51-c70ee70a9fec-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0743d747123b39d9d04e35bce94fa6d96cfced74800abb4f6b4ce9c31a0f742b
Date: Tue, 17 May 2022 23:24:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652829899
