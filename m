Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F40187E6
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655713979;
	h=To:Subject:From:Message-Id:Date;
	bh=720yxlDiOPDkde/y22M8YgWvIP+cu3kzMS4YxGfQdxs=;
	b=h4xfSGbRLZY7xypRZO39E9gy57wwAGl0o/f2PGbKRT7BsZbkCSubAPtdt64YS7Ay
	EOVZNsKPtXD2WYJ2IborK7eET7XHZB6CprQvAVeXMgnr0jyNUK9XDa/5+ItvVaOHur9
	YJlMzJvbzqpLmGevJtqVOwv5Yjv8VqAtX20RbpH0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655713979;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=720yxlDiOPDkde/y22M8YgWvIP+cu3kzMS4YxGfQdxs=;
	b=BTlqyX8L9JD7bIaamJCn7lr88Al9loOQmR3wMkhZUoD92ngtT6Gh2mG6f7vl279Z
	Dwf59ccHWqWRqL59Xc0ZPOYY7zlzWuaA5U0C/dJgNJdZyGkcKMGWEf4Dkm1CiTCuMgf
	L1XjR6npj9qwgGMUCwhTxwKh/MFXMRJF2b0Isa2I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181803e5b63-aa8cd02d-2023-4596-bfa8-ca4b3057b64e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e5125ee49751d25e2ec55352e5b29cb7ed585da8ebdfbccf29d08c522909098
Date: Mon, 20 Jun 2022 08:32:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655713979
