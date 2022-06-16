Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3455628E4
	for <ddprobe@lists.linux.dev>; Thu, 16 Jun 2022 12:47:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655383619;
	h=To:Subject:From:Message-Id:Date;
	bh=Z/vAuei//2ubPlG6sGcTOg7KlDnQk2rrXF+xcdjK0Y0=;
	b=M9oF7WJWyq6HSbb2KSbTa1bX5WveUR/U+6WjqCHkbF7Fjml0Uqi1k5bXccWlWxLp
	TKCdPG5VuLWXR6O8vu9FyHt2TM6VvbwxNWn3BQHW4cJVkBC3YDcaV+McK0vvligNhfQ
	SojPHObhC4+B1VPmK67fUlobIgiZwdRXZZLzYGAE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655383619;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Z/vAuei//2ubPlG6sGcTOg7KlDnQk2rrXF+xcdjK0Y0=;
	b=S2Rm/J2FyHVXflzPvZrbQFOpJqn7DiyY5vPgQlM9b9vki2f/HeEfNh6cZJPB7peR
	LFYSqbczaW0NKjG/2TfGfOOjud7MKcxrF3G/lDO8Ru5uRjFcOLMCSb/LZ92/KRNXg6Q
	ouj0Tu7BqlrHApq5hh6YzUWJnWpyIkhnih9sWz2A=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101816c8d76db-f2f6aa75-d890-454b-843c-c821600514f3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: f6d87fca755bd51334c1e84876c7621b9646cea95e3be7abd8baf03dd0beacb9
Date: Thu, 16 Jun 2022 12:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655383619
