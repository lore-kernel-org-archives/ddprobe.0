Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40FBC1376
	for <ddprobe@lists.linux.dev>; Mon, 11 Jul 2022 06:36:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1657521412;
	h=To:Subject:From:Message-Id:Date;
	bh=UfXKk+YcHgcSJnut0YZ86oo2Mu9F3f3uQowymwYYDEU=;
	b=jUN3ArgL0lyc0GYF2Obo7PXgsYzs27UXEujOM5RQfFKGkAROpmGefI9cuTj/xb98
	KShSCa6A6dh3BdCYNjW7K3tJMZNtnEjYRpDKkGRRpa4qpX1AYqRxkeOhSx48yfAEYoP
	t5uVVpfg8cNKMtNLmc/8Q0LXh9y1gE+8Pn5WBIkY=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1657521412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=UfXKk+YcHgcSJnut0YZ86oo2Mu9F3f3uQowymwYYDEU=;
	b=TZSRKtM6uXEEf7cEOHzKTicY5LBkite9AoBwnNq7DgrpLC3N9eFWrJV8RxdQ2peJ
	t7dPJa5tFdkiIVFtWpVwpApg8RUvx5JUL8eZxKZyEZwIg/Aa6PwMeNRJ5xBNE0dW7xC
	s1GaBy214XMUnyFrS5mSVteEFQpB+1r8jIxCu0IE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ebf998b2-de7e884f-9d88-419c-b6ee-0a9fecc1ec89-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 16bb8db87b86847d3d366c660e3e695b41a1f79d819eb130784175c3fec49afb
Date: Mon, 11 Jul 2022 06:36:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.11-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1657521412
