Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FE79137B
	for <ddprobe@lists.linux.dev>; Thu, 28 Jul 2022 11:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659006052;
	h=To:Subject:From:Message-Id:Date;
	bh=5JFxjlxmsnBjGPXujh4AiR41ybk68K1c3XBZKxefGBY=;
	b=LXNjf5Yj65XZP/L+7RE699HJgHKxCCvQjKEhzHEN+9RCkU3YfosSZbxahzfJ1rKV
	107XkoA7B6gpL8w2AEGWgfV/fOCw1P0WO165bgbCP0Dn+mPMded5g/y9vCFn1Z6dLOH
	WFKHHj0l2OF0Ye966j6lz8eSlcxvxa+Wzc67Yoio=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659006052;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=5JFxjlxmsnBjGPXujh4AiR41ybk68K1c3XBZKxefGBY=;
	b=eOLaZ9m2m9yfYiW8cdoFefPvOTrkfHHsJZtFUS5vPBArGB0+gJ9NT5QGp5MNuZjU
	U6JYqeM498If4ipUib4AOsCGeP3TgyRvaer31n1YVADB2zH7r4zrI7b3mEKspgkYrau
	FH3i9hRduxzqHh6IT1MMivbPxIeKzGMPSmxrU0Ww=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018244776945-09c230d4-9fab-4578-801a-30df58ebe73c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b8c4f4e181d7905f17e8b701e7115f1117a500f450c519fa6e450593c1dee952
Date: Thu, 28 Jul 2022 11:00:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.28-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659006052
