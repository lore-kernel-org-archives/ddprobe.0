Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064867A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jun 2022 03:56:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656475012;
	h=To:Subject:From:Message-Id:Date;
	bh=hETDO77cvr7iHJY5wKN6gs8q48jZxCAXmraFyyTGWgM=;
	b=C9rEDrlOCAN8bZEwtn4LRvVdkScuEF8kMOP5g6gtz9IYTqbBab5cBtXLZ/Y4QfTZ
	+mcsIiCkodBFvHh80UJF3J5HgJicJf31OR+R5XeEAGbF/xBXj8xYjlxyViJ0sixfINR
	Bcq7eHsjtQoXy+Hz4xLYJUYdg/Jzh98oVKE/5R0U=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656475012;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=hETDO77cvr7iHJY5wKN6gs8q48jZxCAXmraFyyTGWgM=;
	b=cYH7tzUR/WIHvsw/298m1S9Js4sWmzvNGC/0KsoChCgdh5YDcFEBmmEu0AZrAw+C
	VwqgpaTSzxtBaVKgyXQj5FsGKCZG/MCEC46VbeKd5qqr/PvvxXhozKtrv63fEwbcTVR
	qqgiPr/8xkfPL5chMBW1IhWBSnIc4qsMMq/AKrw8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181ad9acccd-89f3c1fa-e07c-4cb9-bde6-607b44f8adcf-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: e193186ab3c9f8d07c92c067fa49d9f49480258a04f743da0889c94fa14b36cb
Date: Wed, 29 Jun 2022 03:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.29-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656475012
