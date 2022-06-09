Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E570B33EF
	for <ddprobe@lists.linux.dev>; Thu,  9 Jun 2022 19:41:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1654803719;
	h=To:Subject:From:Message-Id:Date;
	bh=wZ7HNa5DRS/OG9riUXHlIhqw1g9613JJhjFe6vdGHm0=;
	b=adwfwQ7MHip/PzJ+nV2kbKUBw8Lf/yAQMhIPXZVO440vDIDdQVPElVReT6+Uz/XG
	a5a8B+C7BtHtcxOyKW4OCdD5RHPuYdLZKY/rt8gdPbV7qE4ayEmldLcC1qzkoxF4iZW
	0bpFGq1pqkgXRDXARIMN0eaQ9I6k8n1LhM3U7gL8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1654803719;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=wZ7HNa5DRS/OG9riUXHlIhqw1g9613JJhjFe6vdGHm0=;
	b=XjhfuJQ46oIuoK6jwfDdp+LOu03XFyL4TKzL6Nioc0ZMxNJXyAoKAVidGFKoyVVe
	/gGzePihb7lgNmqwZfqtCKoGQFietN7OAdyKo+GrXEbqhkxubZUvKwaIu6Vg/6DyBSa
	vO43xPUzvxFBJzAYyQCBxnwNPepekmnPhea0My6Q=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018149fce428-1a5fd316-692e-461f-93b8-872d579aa95b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: ed3b1209ddcf4381b72ac88b6e2c425c469ff33b77aadc615164a66f25385f89
Date: Thu, 9 Jun 2022 19:41:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.09-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1654803719
