Received: from a27-18.smtp-out.us-west-2.amazonses.com (a27-18.smtp-out.us-west-2.amazonses.com [54.240.27.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D67333D6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jun 2022 21:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654119899;
	h=To:Subject:From:Message-Id:Date;
	bh=9M6NMczeOmnoMiwbaAt7PtZRdiNc8nKl0jGayh04Teo=;
	b=QRjb/1A7K+3tR6MAX4X/nDZtSJ80F4V8s+ARO9S2ZgrY8ApX7CMfVFNU0rHuumWo
	3rORiQeDEyU5URGSxRf/OqaMKSLewz3AuqujeAmDcR1vM19yA9gRzJbXqn3zzuEcXvm
	f1DOv4nToL9LwrJhgrPJ+V1MK9C9Ng6k9PqJRhoo=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654119899;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9M6NMczeOmnoMiwbaAt7PtZRdiNc8nKl0jGayh04Teo=;
	b=Jt1lsQjFBTwgn8h3QLq5IkcMITNnXVlBB527wGkxpNgMKr/eskpAskw6mJG+ZvQN
	a3m+p0awuqLJ29h08qaBgqiWdJ8DTIosMlPXdHQvZt1U8P+mqVYNqYnZTss/nHro/Uf
	8NDXtrd38hAWKkeZrID96HniCDQ7M1bqxbDaZ3C8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181213aa07e-c3873281-c0fb-4917-a221-e167500075e2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5d74c0b966ecea0833f3e870b1e4098774781bf2d84e8cf4258184e01e546f6f
Date: Wed, 1 Jun 2022 21:44:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.01-54.240.27.18
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654119899
