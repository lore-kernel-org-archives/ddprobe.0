Received: from a27-56.smtp-out.us-west-2.amazonses.com (a27-56.smtp-out.us-west-2.amazonses.com [54.240.27.56])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12D7933D2
	for <ddprobe@lists.linux.dev>; Wed,  8 Jun 2022 20:07:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654718879;
	h=To:Subject:From:Message-Id:Date;
	bh=wwrHrLIfk/PxLSMLE+HKb1O0tgDgzQUzLzOBt/e0eB8=;
	b=JKoJYf1kMprLT3R5DmUKX6baZB9I3+PGYax/Pn4OgshBUHLgPOFDQCs8zT5DyUHb
	pAth604EXBJgL4sUxG8oGeLZOuuZDfigYdCmeZTapK5Lbf/wFSSU5HDJf6VWorFwE6L
	oR5c9cVAeZz4ffz7Cdatr5+W+ZUt7PJW++QW5k7Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654718879;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wwrHrLIfk/PxLSMLE+HKb1O0tgDgzQUzLzOBt/e0eB8=;
	b=S5kUi6xllqSXlyaHVjlnXNAHh6k6I0MviCOSjDbzE+DiHmFc6WXc8/uLb0sFzOp7
	kmY6BlHo5Du+U+zd3WXWBFJXRo4uMdE1n/6KS7aw6+Hdi39D7pkqE250IDLLBfIVm/7
	GwASjzDFl2UCWRwuA5e9+5LDucwY9srt/LVXrMp0=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018144ee561e-b1d70e0b-2c00-4dfa-83e9-c1b0354f8030-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 3e3cbcfcaa1d2e0803312c16ddb4ad5c3c26db975494a9025a3123a2ee7878b5
Date: Wed, 8 Jun 2022 20:07:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.08-54.240.27.56
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654718879
