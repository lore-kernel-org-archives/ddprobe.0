Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30B08368
	for <ddprobe@lists.linux.dev>; Sat, 13 Aug 2022 10:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660387252;
	h=To:Subject:From:Message-Id:Date;
	bh=E+zsKG2vWzuGy4E0Sj76CrZsI+CJaPSnhT/XlEQsjk8=;
	b=LyhnUCihi9QWRJ9z/pDyKqYlxIPVe6TeyecFiNmwiK4QBfoBT0QH0roGSnAbmKM0
	65p85aIvTqobEN7z9ouBOqa9WIcEozeDY/4Ubbm4ivX3epigo98R10rYbZjisKOyRBs
	AeKyAYpOEiR49nWelhEw8wcg7uOAeMVUO0Ms8JFM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660387252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=E+zsKG2vWzuGy4E0Sj76CrZsI+CJaPSnhT/XlEQsjk8=;
	b=ZM8OgTlSbX1yhBRjGtkSzT55UgURG4SzN0gf6nQ5kEodZ85FfQPxXSJZqMQyYlgJ
	fd8QJQmIQ7Iu+ifoPzywlJnqWAf1GM/VVdEccuQHeeASex91SjlB4YpN8dbi1P6xRjg
	0q7DT+CqNa2ODervs4JhGlVo5AKiX5h42xs1xYHQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018296cad91e-8b2e0b3c-e77d-446d-943b-8f4b9e7aa135-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 937d9cbab3e285e2a41367fd2e2b6a69ced9b348046382a2a6e56df97553a962
Date: Sat, 13 Aug 2022 10:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.13-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660387252
