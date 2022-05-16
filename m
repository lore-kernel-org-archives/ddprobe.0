Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1831FED1
	for <ddprobe@lists.linux.dev>; Mon, 16 May 2022 12:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652705219;
	h=To:Subject:From:Message-Id:Date;
	bh=x63Pb7WW6wVrLYsNaH4Jjw0iQ2CzX5mFpz6nJOjDb4c=;
	b=KaLRJKEWHPgfGx8vo/+TXwO1FAUuNEUAwPoTt17nUhqmrYDnAwlslMuZR9Kbi//s
	EKBRbdv9TGyo6scorVvaJu7OhXq+tIlcVfsYz51HrHYFdroI47n1lljk+YWDzdAWve5
	Y4tHDTT1qXoDaWZnUP0+f97eBScyF0Z0kj7b2EQQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652705219;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x63Pb7WW6wVrLYsNaH4Jjw0iQ2CzX5mFpz6nJOjDb4c=;
	b=I3VwG4lrmQ1am6BAMLol64X9/mZK+YXLWfIirdVEtaITqgjbkAzBYTwgWbjvUaxC
	RmW3U9ykDL3MUgnt1VpVrB+EM+o3j2yk5HKvOw2g+AU10vDXxkOt8UCi1f4Xj24nCvC
	N1O9q46ET5JNy7guOpjimrtydl7TSpZawWMMa9Ic=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180cce852be-c1241262-f89b-49a4-9133-9866bb14df80-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ff7e3e195fe49a0c64764ac58d5effea9310a6c62955be028643a2e3817ea22
Date: Mon, 16 May 2022 12:46:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652705219
