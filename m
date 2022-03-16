Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EC0438C2
	for <ddprobe@lists.linux.dev>; Wed, 16 Mar 2022 13:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647438084;
	h=To:Subject:From:Message-Id:Date;
	bh=bsKE3NN6Am7TNyqCMVQlvWwUCH9sAtgJ2B8mkwsfUlY=;
	b=l/3VHd5dAIaXuuZyRzi+iqWrJhL1XCcrAc05qtQZnMfrEIw+fBarYvONltnk62OZ
	bX21UEehvgoz9HzfDTOtogQbA5mfsXNsgrw53LLjQHK4tslDAIV+WkrxK/pgnxDSQ1Q
	QHXZ0CufjKCff8LNgC483j8OV8lbKt1SF4yqizVE=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647438084;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=bsKE3NN6Am7TNyqCMVQlvWwUCH9sAtgJ2B8mkwsfUlY=;
	b=En7IKZzWAe354+wKR3hfFr/C6AC9MTQP2FSgDbvMijo/DE7JIedI4B0fJuKiOlfV
	4jXGT7pmLc1MnwLGTajrcLDdDrCc1sxZz3nTrE6rrhiYh2TP8VSzcWCbC2QaxmsyOzn
	ueL+lTciIZsjPkFZb4t3LptBZ3s9AWIl56ppN6gU=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f92f63a6a-6e7c9fd3-e421-4d86-bbf8-7263611080d8-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 134131eb0a5b9a6d815c9973e545a6a93a168ed68003a026edda4394784ff8d3
Date: Wed, 16 Mar 2022 13:41:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.16-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647438084
