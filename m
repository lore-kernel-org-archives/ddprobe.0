Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C0B47A
	for <ddprobe@lists.linux.dev>; Tue, 22 Mar 2022 08:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647936684;
	h=To:Subject:From:Message-Id:Date;
	bh=CyhOGAhN5FzQqo9g6TnnpfDLMAmSY/EQ8ba6asG0ncg=;
	b=BP+NEnf2sAwJd9ZWWxSO8uR/rjn2kKf3ZJ7YWOlEmVwlN9YJcB7oGTydusjYcPCL
	RoJ5N1RTU0hxfU51dOkgk2DPnJLH+Vnigut9u6z+I67aXMBeoBAeaYNcrSNi8TyH+uf
	AmP3PtiKZcZAEVoqdkH3NwRJ7kKfBi5bNJDnbwV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647936684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=CyhOGAhN5FzQqo9g6TnnpfDLMAmSY/EQ8ba6asG0ncg=;
	b=cUyeRb439YMVN+emwU1EK73GIerPG3r8Zb2YIn/pga8iz6+Cl/UbTd8h23SPQIBb
	C/N0YndIK5ZXIfYk1JU4e9u+GDzJS3bkOG1DAoaoJ1qCI0uWbscUYZjcPlov0mr4mY6
	fdVbLCgr0BoyJ4Jg3joN8CWocBbyg+8z9FvaT7+0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017fb0ae42b2-c632d32d-6c30-4fae-a1bb-01745a6dd676-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 968716fdb98ce116021a86e4a39348248d9297434e40eab710bb6eea507b1e36
Date: Tue, 22 Mar 2022 08:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.22-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647936684
