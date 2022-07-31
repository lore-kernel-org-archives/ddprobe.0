Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4040A3C1C
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 16:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659283852;
	h=To:Subject:From:Message-Id:Date;
	bh=oFj3rLhJgZHsRm5zMpEOvNP2ehQVkzzOzhzDzX7GS4Y=;
	b=JToV4aC6U7BMGeXPzzQ4Zj0WHsP4T5aXy6aiYMMCTVsKtiuYcb66khKmxvAUI8wa
	dFQrrQAutFfM3uyy8626/3NcuTYJHQByYvOQzfxfeOwPLkXxkB/uOQ0wkgqFxC/C3xZ
	2auZEPnXedBWXGoS7zdWzOmEzSKBQ9hOvCVp8eBQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659283852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=oFj3rLhJgZHsRm5zMpEOvNP2ehQVkzzOzhzDzX7GS4Y=;
	b=jNxaAmaFyRG/tK3V1CtJuFzSOM6jarHBQLplkJefX3hY9NbgK5lOV7QCtbb22QHE
	3J/+b1fogMmyHTJuMboAujTySHKM6wi2sbD6u8D+LfuGXVK0MjNBU79By40N/s3zqWQ
	hIzuqtvB/D8AroF3xd67dHDCWYKvTo2MQB5vcAZI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018255064d08-c60ebc27-4e29-4f59-8ecf-9641289d10be-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f456e37ba44ca25f51f004d97abe0d5c9d6539da0fd7ea541b210c04977ad2aa
Date: Sun, 31 Jul 2022 16:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659283852
