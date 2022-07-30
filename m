Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574251FAA
	for <ddprobe@lists.linux.dev>; Sat, 30 Jul 2022 09:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659172252;
	h=To:Subject:From:Message-Id:Date;
	bh=FmCERzDY6G2onBhO2BfmVAntd8jgW+RneqUtcDTyQWA=;
	b=V9EAwO0K39aAu98ZUK+kLhRHY1CWIgBmTvodyBlRgtiNlvYis0k6Flw3OqDJrn5J
	rw+sP1NPSrMUwXSoJJyQWYDXGzwCUzZ91b/l0NHtKiN6GNMpezhQWZibIhBMhMSqgDT
	+d87/XK1jjST3TqnzVfyTdno5z6Hn/SY2XYd5Ndc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659172252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=FmCERzDY6G2onBhO2BfmVAntd8jgW+RneqUtcDTyQWA=;
	b=LKh7MykqyNb6HJnT37jNm1JG4lIQ21vHpnZ5c3htXg9fokNrL5LJ460aJUJxcg+Q
	wwad7S9emmdGR0M3J9E6sbk/RuJsaWNlhYr5uwHeFT0l3mxELqU/jvuNP2SyoYOGAhC
	uXDlV8ZdehzIRBN0u4dPglO3Fd2LjFKlp8YdTwhM=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101824e5f6b8e-1533f72a-52db-4e7c-a630-6048502a46d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: db0fa2bd6becc5ff511105b051c62cb49dc0055288fccf77c758236627a1c48f
Date: Sat, 30 Jul 2022 09:10:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.30-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659172252
