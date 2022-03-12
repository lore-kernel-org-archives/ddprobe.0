Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043476134
	for <ddprobe@lists.linux.dev>; Sat, 12 Mar 2022 19:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647112285;
	h=To:Subject:From:Message-Id:Date;
	bh=0ekmr1HCNxlq01InkUxXnMtk18QMLhAuvXOQCZwkr3A=;
	b=ZsSru4ZBnV9L9kxZcD1mZSBd3K3WhQGQ3zpOuqpJvdtByppn4BSw37+5oeoZthjQ
	7r2l5FBXjoH489UcFWzw6xpRxKBFgc8ZecZz9vmjcB2oZwGK5LMnkg4SHHPFAlMemXr
	oYdyY0GL0LWWA6K44+W6rq4gLlmzQ/KkNfThSYtc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1647112285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=0ekmr1HCNxlq01InkUxXnMtk18QMLhAuvXOQCZwkr3A=;
	b=UVs2MNCj6184V64oUZpKtIqGnSRB/6yqkK0K82HTbVDVtcEtm5rxaMk7BjzflYBL
	n3gL+5K96bP6G8nIYcNeHvTglzU44JQNOU4sbwujgwlhzD/UgdxSqpKpXzn56E9qrhX
	z4qpR+6YEkF7SQYuSfXPAhfDYkhB1Z77ynXYWuXE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f7f8aea98-5a0d3d4a-8515-4380-af2c-8f130ba9c5ca-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ddca160c3961be403e5742df27dba6e3efa8aa9a52384999675c7a876e9888e
Date: Sat, 12 Mar 2022 19:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.12-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647112284
