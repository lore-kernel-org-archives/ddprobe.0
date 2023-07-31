Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EAD911C94
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C717CC433C7
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690801928;
	bh=oPjF8dW/c0hQzMyiW83zzizcqmLhDfzz+cCjGrhyJYk=;
	h=To:Subject:From:Date:From;
	b=D/gRBzZjoNaidlS04i8IPt61rN2YEMzEtWUmBm/4ssv7ADTmscm8MBG0Zs8ztBSP3
	 rqRAFrtsEGu5uco3HDrK0X8XKHvnkO8ukWSeuK4nmUSeZhR+VKl2s6E/WHLmSgepbn
	 +G6Y0Zqae7mPhoGrPzachSNLnjtb/XXigIw65/d6c64AFXgc753L72Bbb4pH9slBYZ
	 YnYiZncHEIsomcsRqGenZci7zRFhpclKOFuK0R3T5F3AuOgewc/FHelNVuqCeS+opB
	 h654cjNOv38hSalg9oHoq+JPmMrWkISHI3epB2aF7Xd9xWl7gpWq1YSfbwkrznUb/Q
	 29OrjqZ4YWi8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB91AC001DF
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 11:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169080192869.29439.8468916642624365752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d132f5c38d81e8a21601764c3c78b9329ca55bdade897dbdf149e65458ba83
Date: Mon, 31 Jul 2023 11:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690801928
