Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DBA41377
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F284C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671151887;
	bh=rtkkfwP1XXR+YgVArWHMfXVYdaE3ddrHLGdY3vD8fC0=;
	h=To:Subject:From:Date:From;
	b=jQ3xdYC1DPrYOiXlrGelo+TSAJF28HFe8+ytnFtTJJtriQDTsMDnbc+IYb9A4acw0
	 P9Ar1dFusDq4lVUg4e/0NaVgff8BdY7exbMwF4KDh8DnQrwTDVFBdZkxvLV8L6KffA
	 F6qLON88qXg8XPFdYAzTr7HcLDidE5FMXfLNCZyWnrg/OiVDtFI8th3v8RqePrJ7Pp
	 Lbm65UN9Wsl08KEF6i5Y5orrd/NISNx8+wiszdyHACQ3ZwbOzXfsc7HYtGvYE5T5nN
	 7tTn0ZiHa53k8nS6BELHsp85uvup/SUKF25au5RtQyZKk+P0mJ4mI6A/mwotQOYUPh
	 c/ZvwwsCrqjzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60094C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 00:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167115188738.16037.100877521991700817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ab8a7f529e03a4fb85fdfa70d7a0494456b4532879fc00ed0f9b1759333b2ad
Date: Fri, 16 Dec 2022 00:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671151887
