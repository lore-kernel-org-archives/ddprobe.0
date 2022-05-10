Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD4122F4E
	for <ddprobe@lists.linux.dev>; Tue, 10 May 2022 22:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1652222279;
	h=To:Subject:From:Message-Id:Date;
	bh=AC9uj2JgZ1NvNs9zlbWD6oVOXYg4QAK+KV5UMGIasJ0=;
	b=d4UBlo72KWvALlaxe6edbFzvwEW4W3grIXqU54l+LV6YZsGMzaEwox6ZWEsAyJBI
	sFW5wyKHXSmn07TwqGxRpbpcELp1scHnD4qDCWaRdByodaJYJGHP294SLxIAwsAdwst
	TJSu+i/FK98c/E5l2CKYdalNPGLyAKCJ41rRwacY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652222279;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=AC9uj2JgZ1NvNs9zlbWD6oVOXYg4QAK+KV5UMGIasJ0=;
	b=ZtAUI0tlZgayPc+Pfpbd6Nzp0nkBjnOvoOUOhjAjHZqy+YkTSqQAiojvKEb9FAJt
	4QznvA6L9chGlPQN5p1m31hqH7n1/5OZkpG0YzEJfsoTXAoMnRfFUUb+TTbDCGDxWfa
	UJsQ4+6/DFtdVGMdFQKkztFUSmmLwvMLzPK4iHbg=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180b01f3e99-a10b26ad-b5cd-4d11-8dea-70d4c75e2db8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e3f19c3ab84931a57005c8ed6a3d076108333d09e8b006a05517e538fd9bea7a
Date: Tue, 10 May 2022 22:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.10-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652222279
