Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90910369
	for <ddprobe@lists.linux.dev>; Thu,  4 Aug 2022 06:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1659595252;
	h=To:Subject:From:Message-Id:Date;
	bh=Es5hOKn9+pkqDBIDgnH5PTg9QrMCm907XY+VA7uvNFc=;
	b=IK6E2P144go6U0udeyxC9AufP7IdwyMamIaW8Fw7OtbdWmZLrEzkwL3W7zhKzphz
	wqvIuTIvD41cRkBAT9Rgys9/yJe3+wCf6XThg+jzQBRtAi2kVpm8j84dM8E5ngr6OTt
	ZH2yeIT+9CyqLtO4zymayLsVuvuyU1c/M9Y94tPI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1659595252;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Es5hOKn9+pkqDBIDgnH5PTg9QrMCm907XY+VA7uvNFc=;
	b=Pi6rJRbNKgCWk/NNTn2h8XwgYOlwHtwQWGqUzXwdgVgsYOqhXlhS0BGL+ksosRoD
	VwEOUJd048sUddMvhJrpLxkgzq8gD1u/vx9At65jNorxUlYXysTgckjKLh7z5NkIyw/
	IMdCXHmGwvjqnTsOv7lll1fosMyn29khbwEHGSDI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101826795e372-7df284bc-9c31-4e77-a259-5fc164ad49c0-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: a733d21cdd80f05a4cad7c21d205166c8cf75a228091c947f20c04b031665b52
Date: Thu, 4 Aug 2022 06:40:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.04-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1659595252
