Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDAAC17E3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 03:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A4E5C433EF
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 03:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672631487;
	bh=KK/480kztooNi95L6mNUCroHpvep6pCYYCm1Hfl0AqA=;
	h=To:Subject:From:Date:From;
	b=BzYuBtSv7zhfTkkf3MtxFqCKbEpa8JDgL8BqXOvQXXewn6ntRE4RQO9acNXSuNhjM
	 oOkXMN0sdJeYYTgpttMBXTf4x9RMjyK4vSWehgjbxhe+h04p4eAriLPeP8Z3B/ABTy
	 +UMY508UQzhR1XQLgWq+DkGytF+c4QrdKGKNp03ISpOv1JNAQwzh8NgTo/l1KlAvgX
	 5tIZ2aNlEYcVSdAEI7R336AW/S5goN/GGRugjrJ0TtAh7GFLxHmG6yHKuSbbwbOf0t
	 OjlVVQUBaaFOG9Nl69vY7gpT6E7hkfmGSCxgpHP56SvCXZ8hFCgZaextbNHiBX9ggV
	 qxJMRfMVblM6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C00BC3DA7A
	for <ddprobe@lists.linux.dev>; Mon,  2 Jan 2023 03:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167263148739.1224.11673631088495119418.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9deb843ebd89d4f2f425caa772c54d02a4c5b0fb1946d6424bc8d63211154d2c
Date: Mon, 02 Jan 2023 03:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672631487
