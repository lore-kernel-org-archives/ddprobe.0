Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 309D7A2A
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 08:36:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652690159;
	h=To:Subject:From:Message-Id:Date;
	bh=WxmNlhJELzjMNhhtwVls1sfSFU3qIo/wUMEC2aJP/sw=;
	b=G5x8kCXQK2IULyaa3eop3UiYqLgSDf5suHbUhL1w5YrpzmwuSJSCQuw2DQZYWLI9
	zJT417giEfOuBC/tsdeAiEHDFPgtRxs2CZxx4vaLYtor61BiMPydVZRtPZ1vhWV+pct
	ydZbLJL8bshJozYDBC2SHUxuvpasX8VPtgE4CMVc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652690159;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WxmNlhJELzjMNhhtwVls1sfSFU3qIo/wUMEC2aJP/sw=;
	b=UTlTPhR9gZwd8RBIYoVTbS3j39j5sbEy3IY6jCAiX05C8cEYNBWp+EAxXcAxpwrj
	MS2/osI0Ie+zTJYiCyMncREwaM9ie6NNZPmENdq8U4Wzt0qH7+AiNdUDqWD4SWfLqMn
	rIncVzmycg+hcT71GQ+ndDEDRkSm5e7WihRloF2o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cc0286e7-421f08de-5118-456b-9cab-2c58ae38c241-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a33c205a6ce6e743db34715cd70d15b8fce17d0cf54dc58f6d42c9f6430a48ec
Date: Mon, 16 May 2022 08:35:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652690159
