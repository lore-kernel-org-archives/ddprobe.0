Received: from a27-21.smtp-out.us-west-2.amazonses.com (a27-21.smtp-out.us-west-2.amazonses.com [54.240.27.21])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72ED13C22
	for <ddprobe@lists.linux.dev>; Sat,  2 Jul 2022 13:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656769012;
	h=To:Subject:From:Message-Id:Date;
	bh=rtMLdyJMrZGPbs4C3UBbZ8qLVe+YrlnSYC6kxRgQde8=;
	b=ROUGW8gnVnKU+dE20RizfTkdVIOqUh8mz5rq1rjszeLIwOm3qoblg04Y8vsZdF34
	P31FyBnHEikmX/AclnCMAtw2eEs1ckRuz/qBjR8hSL2/4cZIVjs55J3NhSBxpYhcK1m
	WRC2poID9PhYY07pVLtMiW5pGymd02TyOYV+Lcgc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656769012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=rtMLdyJMrZGPbs4C3UBbZ8qLVe+YrlnSYC6kxRgQde8=;
	b=h6kzcBZ4+JGHSozrAYuGJVT9saITPr/7xinetWTkV2aNInzpnSHiGwzd9dH98wDU
	ukOOfh5kDdpm2JwQ0jcRqjWv8GZfxEgPKRtaVM1YMeKyCCO8bTQAEeukogrejIWeto7
	89zsOlNaWDfuXIFNBHMLa7mV6zsnPf8pNTxdPCzc=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181bf20e242-14a0446a-1beb-4669-9b31-d6b8ae6e5e86-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0361b81517de5c1cfcf4f1ff426024b5d48178fc4363988e9e1938a73ac944c2
Date: Sat, 2 Jul 2022 13:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.02-54.240.27.21
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656769012
