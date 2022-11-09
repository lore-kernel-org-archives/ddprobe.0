Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCDD20FC
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7601FC433D7
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667972454;
	bh=wueqo5rqnJ8jItIwIzC4NH5xvJeAWsBpzagx1hUch0U=;
	h=To:Subject:From:Date:From;
	b=NI95sBGgDOGz+5ptxKQKqoa/nsnb9vTaQ5fFyLwUtzQ3HiANd1XPVzkZ6+kvhPvPC
	 2FRvbRjouSM0Zq0Kvp2iq3oHFtHZcYtCeMzwbFIMZ6p46jJjMzRyg/1hOaHzpsgC3C
	 r07JMlHqFVNIwwQ+ou08rivM5w5v1blf7b1KD7DV1u2kFcA9Kcz5lOUTUd0u37+IFM
	 fH0AlNx+TXhpG7SwghY3a27rZv4nOMoPDDJKiR4w+F0NYbFaNQ0qq/UzzK1K36YLcu
	 e1orYu9D4/0dpKAgZtWzCFLUmuE3CXiTkoLpn7/alpfkpBiEZP1xdwVvAXgN0hg72q
	 tJzx+ml+oilKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FA4C4332F
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 05:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166797245433.21917.13772598079514067754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d598486cc1f0abd62e1420b6fc44fd46bed1339b37582141ffb22c4bfdde2b85
Date: Wed, 09 Nov 2022 05:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667972454
