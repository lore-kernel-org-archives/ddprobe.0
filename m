Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE01B163
	for <ddprobe@lists.linux.dev>; Sat, 19 Mar 2022 14:31:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647700285;
	h=To:Subject:From:Message-Id:Date;
	bh=GvJe0TlfeNvnbtt3QHrHS2aCoANjXJIkxa7z+KGZxvM=;
	b=gG8TDJ6/6+Jgqr9857f9J18W1EN2Q0t7tUQFZG+N/tBRsr4vgpWoJYAxfooySHdb
	ldX5HRSjGYM0pA9HT9/uUGjx03nBxDsLmMAnFBw5RKCISdHvVpMJd64YszPrU8E/Dw5
	6yAFOR+jVYMmK4PNK0W3VP+iEmoSKrCNDeTZ8XKc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647700285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=GvJe0TlfeNvnbtt3QHrHS2aCoANjXJIkxa7z+KGZxvM=;
	b=JLNU6Rd8rqIIWdyWR1UsB9lDgJemA6kGq9esN6lNWLd/JOiZrFAC81fHKX1ZS2e4
	siHnLHJLT8JrN9dQdBpYQ9fz+iVGUKjV8b9SMJNS+DbHWQKRgZenTC430SMSOvGOs7Z
	2dnvnk62e6bYO2HJcPf18/ZEG+yq07N/SftvFcic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fa2971525-c7f1c62f-8d8e-42db-b4a7-b0f23083d7b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 78af109f4d75ec3b17bf9f0b099cd7ad8d397b0fdc4f982681857e328d83a53a
Date: Sat, 19 Mar 2022 14:31:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.19-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647700284
