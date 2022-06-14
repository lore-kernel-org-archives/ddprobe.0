Received: from a27-11.smtp-out.us-west-2.amazonses.com (a27-11.smtp-out.us-west-2.amazonses.com [54.240.27.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A86C1376
	for <ddprobe@lists.linux.dev>; Tue, 14 Jun 2022 01:22:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655169779;
	h=To:Subject:From:Message-Id:Date;
	bh=+PR+88t7HO+vKqyLZ+elIY0BTBjJu42m/lVu3ChLDZ4=;
	b=jKQU3CdrdBtgWeKpkakQgCQmp+LGtsVsrS4qsLgH3VoPfqoiTtRa9zknOxdgpL0e
	t35GdQrU2DReti88i3ms47TmJW4+8iY7+s+iaooDmeeGpG4DN3qsID3oGVUYZ1djJVT
	/P1aJ3eihN1xuo53S6McHprHk0wqVKGDeGfgc9XM=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655169779;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=+PR+88t7HO+vKqyLZ+elIY0BTBjJu42m/lVu3ChLDZ4=;
	b=UDdRYkXXzrRPjcMpFj4GoOeisVJ6jFtrcvJ0vXEuDtu/wacVwRvx8G0a47wX25VS
	1xkSwDs8zbDlxdxxGiMxd6iE8M7tgbdpCygYRu+5gxFK/C/K8LtIbATgtek+LZIYV9v
	IZvhCE3seiYm6JO+D1KzH486I3Q8iXG1bazmeeys=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101815fce8673-059480e1-0972-45da-97ed-fd0ffbb38b8b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2bcd6ec16ee26bfb6dac28fc22a772c177e1f579a09986b806435edd858928dc
Date: Tue, 14 Jun 2022 01:22:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.14-54.240.27.11
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655169779
