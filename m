Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F9028E7
	for <ddprobe@lists.linux.dev>; Sun, 31 Jul 2022 14:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659277852;
	h=To:Subject:From:Message-Id:Date;
	bh=ZafcKhOTp+UJyZy1nW1WNpqjacZcsGfAbNXxwZy/npc=;
	b=XDiuGnIgm24vwdPBbDgcXjIvwtw/kdMOEUzujV1Dropg2XzUKWWSSF8nsjFk5OhI
	KVxXsemkzpRcIO5d+dZ9svqjmPgoJOY2ehxwh1hYfRIYY1Ze2YaaxRKTo7JqenZFzOp
	ECsVpqhsepZA3390eI7wyLrGVS63J1yFoCc9fM18=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659277852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=ZafcKhOTp+UJyZy1nW1WNpqjacZcsGfAbNXxwZy/npc=;
	b=i9I7mLCpS4IQFtGY4Rcad/SU7oWA+3hLCdUMu5roKu4URx6zdAgCzeQdhbgvHuLC
	geVNOx8Jg9WpE+RfIw3zRlamXqYXkErilC/aD7WByvlEEP2+U3yfmjn5kfYgYdr0dyY
	V/r4ld6haTemlg24l7z4W5+XINQQ9hB7cZQ0h9l8=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101018254aabf60-1cb3b7d6-73f2-49ae-be77-bc0fced08d49-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 2493d1ba8afb553ed7101a6fd4489ea82ffb07a352523ac12dca6ca3adfe0dc7
Date: Sun, 31 Jul 2022 14:30:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.31-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659277852
