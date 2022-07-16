Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58DE07A
	for <ddprobe@lists.linux.dev>; Sat, 16 Jul 2022 05:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657949812;
	h=To:Subject:From:Message-Id:Date;
	bh=Lk0nzLLGB4NYdTdm/Ub81p1Tgp70XQJ8KIvFvgbIUhA=;
	b=ecX1Ov+ETw7WTvWxNpmsh3XOYHsCb+SF6nBsJLzXMkf/2dlAO/6TIjoZqe8VnyKr
	ehoMyCCUg659LCUqhvGZQTOzGqp8T+w06GYA9cElEiye8IzxjSy6GbV0e4zswHv1eV8
	2JhIj0ibxDNPLlzbyXnog6dEoJ/n5ZFVaeGAoFuc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657949812;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Lk0nzLLGB4NYdTdm/Ub81p1Tgp70XQJ8KIvFvgbIUhA=;
	b=a5OYTwR4tBSJrkdXSXoxHX1agczAI62uC190JmX4PLL13rmSgAaYKiZv32GLyNIV
	L60za7z1eAAn1UBw44tVoJVKRSobCWdJZVFCXYDD7xcYS1c6Bxnrhb64YqwGoexFIvG
	AcWF0LOWdguivGlA3jnqsZrIKAbaK/kaTCkWAOmQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018205827652-ad48b4da-846b-4734-8e50-e2cac25d6455-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7b3e0caf84677c88f30663d4f576bf2329dea3bde7c856315c14d1ed3f2a74e7
Date: Sat, 16 Jul 2022 05:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.16-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657949812
