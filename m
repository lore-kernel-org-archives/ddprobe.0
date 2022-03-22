Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D1FD7ED
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647919584;
	h=To:Subject:From:Message-Id:Date;
	bh=jk0sQtFtWd1YVPkmArMFEioquBOrY5uwJIytaPwsrN4=;
	b=fCKMIaq1NiQO1QGnfjYuCYTBEaCoH+GdNTUgXWZcJ+Y7l10uTfc2D1U1MLt4JVSs
	vroiHKtCWaCgwR1HLhGLXfsJ/E8bG0KcyT3OiQJZ+QqoatYK/NR9+tOw27lcIKWEFw8
	/TzmgT5LM9oNUeQjCs70jSQO/FyyfGbWFqA2MDhQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647919584;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=jk0sQtFtWd1YVPkmArMFEioquBOrY5uwJIytaPwsrN4=;
	b=KpIymFZsMUwzKX/UF5VB59e3HkbtONXGJDaXU7qGTyCLN9d9Q7Sf7XoRzFldssWB
	fyaV4TaGgSYkMPKmT6VvEiB6+mKmtogfbceYdZ5Hp3trpDmKw+JKQ8R3NddojTcwH8G
	UylROvNy2FvKoGHm15Q0eYbX2z/aUQZTS7lBzTVo=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fafa95617-c53dec55-05ae-4ff4-9918-7c028f90988f-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 6b76afcc5a40a0a660b9c1ee182fa38b12921b077964eea15897fd4b5bafa45c
Date: Tue, 22 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647919584
