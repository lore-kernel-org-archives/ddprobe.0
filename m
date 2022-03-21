Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6997B612C
	for <ddprobe@lists.linux.dev>; Mon, 21 Mar 2022 19:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647890484;
	h=To:Subject:From:Message-Id:Date;
	bh=pdmzf0/lK+SR56FfH9SIG+bQwbLhFcwyorj8TGmxbDw=;
	b=GUUmNlZbxE+6u7FBfmTki88gay/LITiMU8TaQZgG/rdWwmfS48XO71lg6itySi4Y
	QDMApPOdyVwIHFJ6IoqAkwzxeRu4kXKdozEK5tG0XnIHC3QeAWIQKElybIq/zikH1HA
	2ylNT3mEIapr3Qif7hlMzhvL45FIEQSiJJIY+Om0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647890484;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=pdmzf0/lK+SR56FfH9SIG+bQwbLhFcwyorj8TGmxbDw=;
	b=FoZxipAZV59t50vbiFlkX5YZlBwZnM0hKvPdxslBAdgAP0CjADcQcwyWYQklY29P
	wI5Vk0Vn8uzt+Rq3xshz+p8b+gHCK0n1qZa4dBupYmd5OE++B25VAZzw6722C8ZkykZ
	ZSpQffRBbVZrW4h6pfMFiV6vVrGFeh/6vXX6yDfk=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017faded4e11-23450699-64c0-4736-a5b3-4f1539ef1f1c-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7dc174b12545e4eb3d777fd371e6b40c1da1db543c2dee572105012c4cacbb50
Date: Mon, 21 Mar 2022 19:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.21-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647890484
