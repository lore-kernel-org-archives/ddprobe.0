Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EF67F6
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 10:06:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658052412;
	h=To:Subject:From:Message-Id:Date;
	bh=vC8XqseqlEbFZtqk1nuw7yTixV3YzXYjJrkISTiLGCc=;
	b=VPPs8Ktk2r5UXzuCMuC/BWR1yRPOgUxkKj19gSj3gs9rfB2NpRYnLaS6sNoeuHNu
	+0FnZWiNwyszZaRO6fUgYsN2D2lf5oZbT5ZZVkBp8OvxGvWXy+GH5zPHYDZhDb+TLdS
	1UEk6lktCS0WZBWs3+QUBSvA7Z81FOhdJgrj+zw8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658052412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=vC8XqseqlEbFZtqk1nuw7yTixV3YzXYjJrkISTiLGCc=;
	b=J3RQBqwIkr2O60VX9tAAy3/6RHNCJA3ZCWk/hhujPUK7vhayGpLekxbFldpel97l
	4IouL7Ojm1hTx+bMCRPj3Pl+Xr+yjRxpB9jR/J5v4Vjxx1l3uYPvmm/yKILyKE5AYgY
	Owe1mRQwYvr0LgBegxIxcvZeX9srRXCKFsj7NzOE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820ba003d8-3f747887-e161-432c-8ea9-e736602f5b20-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 489f4424ea2fc4a0e0fac7ac579ff13c05cf46b967454806797b4683ad06646c
Date: Sun, 17 Jul 2022 10:06:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658052412
