Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49EC5187C
	for <ddprobe@lists.linux.dev>; Wed, 16 Feb 2022 14:11:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645020684;
	h=To:Subject:From:Message-Id:Date;
	bh=tOv5dpVx7AefMOynU4tR8o/2R2xASuRppNV8swbjss0=;
	b=QLotvVtaScDkqkXNfpAW/doMud4HDJCYRMwya60arXisIIJaZtdORTjvisNezuYv
	7iC839Oz2jFf7YwNDO6th6Wo9am7Z0uiJLV4tF1aKxif9eTbfVFwq7cYNRivyXgXLG+
	fL36BPXF+pyvmd++wfDiNF+wyGfyBiLmDurLxyT0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645020684;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=tOv5dpVx7AefMOynU4tR8o/2R2xASuRppNV8swbjss0=;
	b=eUxXnJ+gtG1eihtYJ5VCPrcNktSnMfTsYuC8u0X+m9BiaZvekZKUnwbPKpeM3vY0
	JzoTVXqH1b8nxhCVBZok/p5OfWqKbY207hUtakIz9ioqZnr0NCv9QwhQmB5r7MykF//
	MFtKw1heKBSNxhnMWufe6fgjBINdPzFsAd7gk2jI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f02dfa1e6-8aefba98-8d98-4537-9b4a-aafed368d9d9-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 5ae29c6d8b65359853e519a0b75bdbb84e90ecbbc471a2bf7d8fa381b4e396b2
Date: Wed, 16 Feb 2022 14:11:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.16-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645020684
