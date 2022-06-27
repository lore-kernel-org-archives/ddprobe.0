Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F024F20F3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jun 2022 07:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656316612;
	h=To:Subject:From:Message-Id:Date;
	bh=aamumYYQLzIgp0IXC8uDjfclVzOWwpky8iniR2vzlS8=;
	b=DZXmCe3VSfHuS5fU4ZRWFPSAwMwfmNQ+Bj8lruFI6uaq33AZCK50vX5M+v6XRvm2
	47BDlshD3IWgsmqEaWv7DSgdIqsXumVtNs+1Y0/zVuTYTRz2on+cOEE60n7JwEdyppN
	HboZ2cNplyjBZupndJT2JkmIbovTUrInmWkhP/g8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656316612;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=aamumYYQLzIgp0IXC8uDjfclVzOWwpky8iniR2vzlS8=;
	b=jENuTmeffwp1tx0jcEg28Es+dNQ8QlspulYfTvPCoHk61Nb8I6PwE47MZd26P4lB
	BdU5U2a3HlN/D00isyeOhCabx0oyI+/3nO3QAtI7GqNlPlQiN9zC9cpHYfST8g6B9hq
	Io+Ew7Llf17dvoY3iAJx1Xfx7t+RfL0d7KnFdhto=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181a429cee4-4ecc75a1-d95a-4377-96c4-c35efda119f0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 555779e75fad7c8fe74a01d2632eaf03b86d09d1f1c410298ec41d7810a31484
Date: Mon, 27 Jun 2022 07:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.27-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656316612
