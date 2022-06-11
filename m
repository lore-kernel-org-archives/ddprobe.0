Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF56C7A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jun 2022 13:04:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654952699;
	h=To:Subject:From:Message-Id:Date;
	bh=TckEnIEkq/KQa/FqEcftDy3683maOXz4BN6ZcZxx8W8=;
	b=aftnSlEmltc1b9y+eQnhWyc1zxdYz1eRF2c+MgrHKKGZEVdxSEZlYTEpsSMUfGcF
	BfHQ0UpkiVJOLRJT7K9grInyT7YyRmScCfmm9n3GSLHb2Q/yIeUrkMwb2jqnoJEFhFP
	NDAZLWvUsTdIz+NH2RWTNYOWdRp1xonTZDgLRgDE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654952699;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=TckEnIEkq/KQa/FqEcftDy3683maOXz4BN6ZcZxx8W8=;
	b=PpsNFd/mPHfLAqC6tujRQPD3mGgHT29AW+z9oUBg232NzTktpfzoOArfrbbig31U
	WP8ltrLOf7bqdRoUT05ga7jGtDL5XfggIO8tqy5t2pEjggDfjuR2tUmIhcEFEBd3xHM
	X+Efm2NnCOViK+ycXOV/McC55jZgOvjsksI90/vI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018152de2543-a95ce86d-d862-4539-9f5e-52602824b142-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7d45843f6f6657533b5d4653e7f48767a6f2ca44575227656b59982acb448467
Date: Sat, 11 Jun 2022 13:04:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.11-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654952699
