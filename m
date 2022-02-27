Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 932512F2E
	for <ddprobe@lists.linux.dev>; Sun, 27 Feb 2022 04:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645935084;
	h=To:Subject:From:Message-Id:Date;
	bh=hTNvTNE5oxjwb1gIrbK4iXxrCp3aER0qdvsoRNBKZnQ=;
	b=kxh5FaxZkwQVFMWRTeY/n2HXbHwcy5INAk64gCmE49B+wsI7KKvddh/1WQQHDOMr
	PTJKvGN8Ib2YiWN2X3IcGctf4O6um1yHf2+uzCow0jMZnAAtd4RV8gk0/SOFBOaL0Tb
	anqD22ekRWkeOnFZSrOMnKcjrX77iTxYX6xhcGvw=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645935084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hTNvTNE5oxjwb1gIrbK4iXxrCp3aER0qdvsoRNBKZnQ=;
	b=gkwxX9y0tbWH6H2C146dTO2AW3nrIrmHOKyBsdB6KLk9KgztQifA3rDaSis57klq
	pBY4xtrkIvPDp/uPYIb9vyxe+fhQppXKUWo3uP07D8BrjSvyQeBG0vKTDRHHFbDYo1x
	ylt4SsXl7rimAcKbxexGOFnXZqZWYJh2V4FD4qNI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f396044e7-d5b9c7da-4c0d-4770-a976-90f80972c1c3-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 540e92319663e3251c54c15f315bfc9df1f1bb26fbafd358f6abcb21233fa14c
Date: Sun, 27 Feb 2022 04:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.27-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645935084
