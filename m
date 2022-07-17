Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3532575
	for <ddprobe@lists.linux.dev>; Sun, 17 Jul 2022 19:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658086012;
	h=To:Subject:From:Message-Id:Date;
	bh=BGyyLKK+CD2t0u4F3lJomboXzJenpXNyG01MelcfCYk=;
	b=MnEA2bDJHkZEdDfOBhc12fCHpQfKJ/8PaT6q5gm32XhF58gDax2bZqFrjZcTRw5C
	7yx0ZksTxxaA9P1gtdkV7V0Kvi75gi+vPNn89xFQVfzoPXnrqMKEUo+NyyVuU5nyji/
	QL+otHKZ9eipd46ekJ2FHwvHFgIgyfwamcjH71CA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658086012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=BGyyLKK+CD2t0u4F3lJomboXzJenpXNyG01MelcfCYk=;
	b=WfVWbySfagUej4JGypRabLBWasxUGe3ma0BZ3A3qNzYBMuLsHIm2VCAo9NixFZb4
	qaSr9zui4Ech4YPWMva6/mcX9hBh6bk9tXweX7o5hIpcPo6ZBL+ambavvpUTH+V/7Id
	vrD6nVC2tm5YPJvKDlJ0YwIk+neZ0Ed6Xk6XIfmA=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101820da0b55c-5f107289-414b-4511-83ce-648aff225d2f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4234bc215e1175bd53478965cd23e99ae6a4106cb6f45b739cefb3d2eba94e7f
Date: Sun, 17 Jul 2022 19:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.17-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658086012
