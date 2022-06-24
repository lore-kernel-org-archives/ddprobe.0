Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D6C7C
	for <ddprobe@lists.linux.dev>; Fri, 24 Jun 2022 10:26:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656066412;
	h=To:Subject:From:Message-Id:Date;
	bh=IrbEOqkpTmWEFVeS7IEhFq72f8d9y245QaRpZi4jtBM=;
	b=evL4y5oG9lpM7j5Y9T1ZfF/jrTn6ipH1YG0K6t9r/qnEn4kTO85MlglXokmv7QX5
	L0ekKNAZTqLwv0VcoS4voRgPeTp1iy2NHrAK3SpshwHeme8dxZhxGeHzIXy/916Qlmc
	9hDd6JHB9OtP51HX4Z8ln7nN0MrDoU70+2w0Ee2g=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656066412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=IrbEOqkpTmWEFVeS7IEhFq72f8d9y245QaRpZi4jtBM=;
	b=PfnuRRi/hpRa7dCriTEt7xYs5ub+Pva+ef/ryxWCaUUClDiF0T7YggbnSx4CaF9d
	jMm6yyDsZjRJ8bBtnDqROrKpg5YGcOnWMmBUWzRlYQxNJMbAgVdm0zC8p/yb1fnuBMl
	wEC9l8WIc4znWKCN64DKcENsBw224KDNOqMcykRQ=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018195400f20-a5a1de51-46b1-4575-9122-19272c959152-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a47ca13d5e919f46088bf7c534a2b7bab903cb5e4cfa73d2b920f5c780c7a7bd
Date: Fri, 24 Jun 2022 10:26:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.24-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656066412
