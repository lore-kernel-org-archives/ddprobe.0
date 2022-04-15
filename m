Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3E2B7A
	for <ddprobe@lists.linux.dev>; Fri, 15 Apr 2022 04:35:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1649997358;
	h=To:Subject:From:Message-Id:Date;
	bh=9phfxMVTIBylKHTNkRCAG4nKUMG+yLA8KzqlVasG7+8=;
	b=AD22HWUd4SOCwcJ/1txPbCX2zphQ7Hxs7RWJZ8D1j8uKT+xCdyroZUVVmRsjSGOV
	OF8e4HAWPS+7Gy3msqjohnCS6oIXoSeo3VtT+QYUJvqO/Snf34DHLq16fqS/Rumu9nn
	Vkyj1sdrU2qBRUq4eRHyfdR0Pgeg8/v7Se4TBX1Q=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1649997358;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=9phfxMVTIBylKHTNkRCAG4nKUMG+yLA8KzqlVasG7+8=;
	b=ZgkRDDxRJ2iz+5FwXKoIaejaoXxU7iTDzCgAQOF6JnPxPGJPptbTFwVDGJuj32Ka
	Hj5V8wSjMYhYvXyP72AK9WdFxt5eGz60SHznyS6sqthiJ6e90GhkWBUy9jAltG6K4i1
	FAI+3MZg246TfOOO1pBQ6DUc7MBNYH4OQjc5yM1U=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101802b81a4e8-3d2ea1a7-42da-4179-b56e-989cea23d17d-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 4ff5474237a901c032b8fb42d655ad3b0a0ed1cf44bc8f7682e8b6e90fa4dda6
Date: Fri, 15 Apr 2022 04:35:58 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.04.15-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1649997358
