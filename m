Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 564943205
	for <ddprobe@lists.linux.dev>; Mon, 20 Jun 2022 18:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655748719;
	h=To:Subject:From:Message-Id:Date;
	bh=ldH9TIKUHbJpNuuI5JGWqesxbKdDZrc7Wpw4kbmH7yU=;
	b=RvDYj3F08CB/KC2nXJKxiS+QSpbZmA6VDtzwkQEoTDTOW+Gu0NDmKm+qhTloej47
	G9CPLFbqLyBnUIRZOF/alpH5IPkhn32spA6seMy5c35ZabwBi1Szdria9AXenhgCEdH
	+g/lJ7TMj7C1/hpEWA1DP+wooaOo9RBhdvfdxAF8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655748719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ldH9TIKUHbJpNuuI5JGWqesxbKdDZrc7Wpw4kbmH7yU=;
	b=YDmykpl/ZK0JmTEvmmwmgHaDcpS+H0imWn8/dpAOwST2PVRbcomLPc1GExGrdS4p
	X8V5/Zlk/qbW+F2Buzmh3rkvOh5WVj2Lulc6d5jo3Z0pqzrIJ0KyqTOkIGhnQ2Ecbjc
	bWbY7nWD7z1i2WP2M2pSIgG0fICzpb1o6zJC+1/Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010181825072b8-d8b353fb-7045-4b75-9b6b-6fa5a83296b7-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 53ae2d2e049050611cdb2b4817d6788f6b1726e52868892cdc15bf21c5d5faf4
Date: Mon, 20 Jun 2022 18:11:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.20-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655748719
