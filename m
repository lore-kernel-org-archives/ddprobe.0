Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98EB217D2
	for <ddprobe@lists.linux.dev>; Thu, 11 Aug 2022 01:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660182053;
	h=To:Subject:From:Message-Id:Date;
	bh=Lh+g4mKYG9zhD6jeMVHf+XdWBUsgSXlsxJhE4aO31zE=;
	b=Cnib81j92GuOKLeb6+EikbqiUbOmaucMc8VlGOaVKnGOoR+SP4BelEglO3IKKkg7
	uPPFa7VGTS+kescOkQ09+alteWqW4Fk792OnBA0SRqZL2gLE9QxikmHCRONL48o/RHy
	M+FLcuqlz1kYh8XnXJhZP/eDQR1qy3k32oZFWooY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660182053;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lh+g4mKYG9zhD6jeMVHf+XdWBUsgSXlsxJhE4aO31zE=;
	b=azsDF/z8dI29jJPWulsqoC7meiXgvcLr7/6Xj7vE0PJ7S0XK1WHNGXnTfyaj+ci/
	BZdkQjj0KrgiWIoLcc7wSYcYn7p86Yol2D0FVLlgoLjlpFzUkPHxH/77lNa7FmvVtEz
	PY/j+avwGT7xWofG1dO0vHwcHn7Ys5vEJTEdoP2w=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101828a8fbebb-bcc9c677-20d5-4b32-9096-5b3e98f1cf4e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ceafcaeb8d9262082b7b9b161283fb46779997b501e28cb7f176384beb3452d
Date: Thu, 11 Aug 2022 01:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.11-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660182052
