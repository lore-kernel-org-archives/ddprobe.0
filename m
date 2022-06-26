Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A067A
	for <ddprobe@lists.linux.dev>; Sun, 26 Jun 2022 10:46:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1656240412;
	h=To:Subject:From:Message-Id:Date;
	bh=x1deayL4Lukp754C6vDcTKOfAk1PjrxUWpBFeRqufKg=;
	b=dT+u4zlyWyF1PtP8qtfaRThF9QUp9Pw+HZ41zcNKze4Pr1MbqQh3lMAy5OLo/f7m
	TXnSfwTWTcP7zjlkxhVtD1Na+NoH/ZzsZk8X0lHIsk0zPljtKvv+x6dqv5FXYq/f9Bz
	Vm/VZJpfxKfC34Cn7I/CcSSENrVqLNiSJKH36V3w=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1656240412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=x1deayL4Lukp754C6vDcTKOfAk1PjrxUWpBFeRqufKg=;
	b=dRJ76Lwu1MLXEqI7VvgyEWzNnfScdcZh7pauFwyptra8n1ziJIiClnRCFLQHYsgX
	DbzVpb4u1EhwN0O5yrgO9pYDIRAvRT+mhj1rcRWTUvxIDvt/CqUUXudX36DRUJGTCOv
	xOhxRCq0GPLyRNLqQmNlsdUnH5a+mXqVapEsI87o=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101819f9f1675-416661a5-b830-44ff-9594-84ae6d2774cc-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 28ba3e28a750d9873b3f75a3fbb40e3532f98da6a35441397f6d813fb18e9bc3
Date: Sun, 26 Jun 2022 10:46:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.26-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1656240412
