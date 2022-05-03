Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 772E22F2B
	for <ddprobe@lists.linux.dev>; Tue,  3 May 2022 11:54:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1651578898;
	h=To:Subject:From:Message-Id:Date;
	bh=dVV+jGYM2TQmlsBsYsAjtCGs+80Lqmdl9mVb32T8YEQ=;
	b=PwG9xabCXzZM25m4IuRHej7JkJxBnBO9cWDlnjIhJopk2SJ5yCMwj6yx7Lzg4uxl
	SlBv6GSyEAb7DGXdju/5qtrms2+E+7I+jQ7s/qwooMPt58op/P5lmQvLjDqHr4Ep5YT
	TefO+emJiqxFmbZXcAUgvNOeml6Vb3HU2zhusuak=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1651578898;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=dVV+jGYM2TQmlsBsYsAjtCGs+80Lqmdl9mVb32T8YEQ=;
	b=I8YkwN4vDwZ7h1SvNvEak3eNe/NtYHlLYJ+sSg+dUrOVcuGqqEtG9yNkacttK4xl
	xth+UPiSbQdixP3I+3VffiY1hro5J9WKq7XZBwQypdG4g4xraBkC4XFc/s8p/f3TY0h
	4xk5gBHlHaNS7PYkvMB7wbRYXg+ll/0uetocHGh8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018089c60757-123979b8-29b9-4f6b-99b9-96bcda4446c1-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: afef55ff52e3e59904feff9b5aca8f52e6f8429f5f8bad1dbbf384d46998c02b
Date: Tue, 3 May 2022 11:54:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.03-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1651578898
