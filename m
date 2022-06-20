Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E81627B
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 01:59:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655690399;
	h=To:Subject:From:Message-Id:Date;
	bh=ty5ErUEoexc5TH2hOw5HPPgmwJzBKGWIS2SjqK52hG8=;
	b=U2IRNC/uV+DF7Yd/8hGJL7ieJyFScfnuWovjjEFNJxWUD/s1O+8z+vUHPqc/8zse
	3wFR5BjtMCiHOOQULN3Ue2T6JJxXFkyyDgc56ABcHPYZZ9flOsCHevcC8MGS0Lpw1qu
	F6e1J+IEJccdRkvSG95Nq8U9Z2fwT0Nl2p5Dka98=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655690399;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ty5ErUEoexc5TH2hOw5HPPgmwJzBKGWIS2SjqK52hG8=;
	b=I+0CAXO7SoUhutvdIC288/4+dk4UJ7g80Ih+FEhpjO7iS9u831CfFWQmpJTRiomL
	OIti2ksOX6yeJ48HkusSpr+MhlQaho5AAYX0q6veyqI5O+BSxbPm7FEV5JIi7+5m4eE
	VTKrrz6zmpAugGogUwlMTYhX239pJ/b0GcSvKa8I=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101817ed68e12-9622b032-7590-4822-bddb-07c2a5923860-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1e31bfb264c050374906cef442e73b71759b29141a4fdf4a2365fe58855c8d39
Date: Mon, 20 Jun 2022 01:59:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655690398
