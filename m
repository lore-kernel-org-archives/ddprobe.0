Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59ACCED2
	for <ddprobe@lists.linux.dev>; Mon, 14 Mar 2022 03:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647227484;
	h=To:Subject:From:Message-Id:Date;
	bh=WvLLYGjdQS5+YelFShoabj6QR+imdbiOffAxJ7JzSU0=;
	b=hTGrtUuWfZn9daFqpnb9Ydm+RzOX3YhXpMVnXxHo4+UVAscJQ+9RJuddBngk5h9w
	EpbnDIVlKd0JCEjpOJPZdNeCtMzuZLHEE+HBXCD+hmCXqGTFKgFw0Qao2s+zYN1LuUA
	X4GHTfT4zeu6IcM/fDi1wTvg4I3y3L1OB0uJRPMk=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647227484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=WvLLYGjdQS5+YelFShoabj6QR+imdbiOffAxJ7JzSU0=;
	b=VSWPlbi01szdO0/26VAJjf5uZKUQSbPJleqh2qc7dujYU8TBduKu0S2NaslRZMrH
	xJTppGzKFDzrdcRL53euCso5ovkwXIyWopdmiCHjcA3LYKWXWHhdWLHL2z5VJTgQVZ3
	Fm6uDT0QJS6Q16kVH9gf7KR1SgCgSUUa2qWsmN4Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f8668ba59-88367492-127a-4a60-8ec7-6fb559e809f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: c376c446664db2d4ac5928b89557b359d505954e9dc449bea64d2f29775ee7c8
Date: Mon, 14 Mar 2022 03:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.14-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647227484
