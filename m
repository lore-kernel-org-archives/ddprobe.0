Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5270E7A
	for <ddprobe@lists.linux.dev>; Sun,  7 Aug 2022 00:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659831652;
	h=To:Subject:From:Message-Id:Date;
	bh=kcHx6aFv0Ir2O33LN5ynMnkkDbGLXFBrtux94qB2Kik=;
	b=ADbQUjjDUsQKnTlKMlfhialS761E9lQWgnpL9y8oSD6pPMsKlJkH94glhkWIbdcG
	xIjM0sg4IeKuRc5bj5SNQh2LI6A0sJTeC3dHyfuqkPU/wz7BV2LKSQiP52D6y3m2bYx
	dhj0LJlNX4Aa8ZUfBwLbiT4XSl4m7Yt0kdrNPoF0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659831652;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=kcHx6aFv0Ir2O33LN5ynMnkkDbGLXFBrtux94qB2Kik=;
	b=GGqw8aMBWARcNo/T1RmLVzujS3ld7jj5Qb0ik6CVJjhIRV3d6qOevy3bSgivFXPz
	UXDKfuuunl//7lNx12Mo7lpa3YOs0aS8i6KpxULl3SfOWG5XzdjHqaT30D344dBUwpO
	IHXoOyugSEWJ6ZrYTjhZ+Xn1yXLh958U6lUCtsPg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018275ad10bd-66af4455-b8a3-4b55-895e-265db63b4d8f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 10229a660887c766246bc66f7d3c2555a8cc9a11efb4803d60940f0cf4e9a741
Date: Sun, 7 Aug 2022 00:20:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.07-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659831652
