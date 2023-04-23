Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F837F8
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E186CC433EF
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682237465;
	bh=7S83eaWmEUH6rDDQrdzR7+VHBaSFvlm9b9ldi/0470k=;
	h=To:Subject:From:Date:From;
	b=R9aUc5iof7BBv440empIljwqkmr1S2NPDizcGAu/zXQ/uvYD/9YppamzujfAxakLA
	 zDOC73E9ZVfl7G/qpEvcOZL2IHTCUh4+ZqByFVCl9OD5gnFMfj7lxhECjjRYYPY1ru
	 ca21NBxceQRBo9J5o5Qb2TV4quq+5mj0vSel9vogxGtmmfYtW2UORhTFMkMyntZV8M
	 QY2gvy0Gcq+xsRAQloKn4y7w+ZMfHWFUI7rN8bFOEQAzY2SJuPi7xnQ8U7R4I6/TuG
	 VwWoOq552ZqNzh85vAgBn1xprbMVXnDj0QOzAfdDkUwLWJP/3wd0+74qU0RUG2jFAF
	 X0rtqTbTHQX0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C458EC77B73
	for <ddprobe@lists.linux.dev>; Sun, 23 Apr 2023 08:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168223746579.15241.732402463068980356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a54340a55d2b7f9c694906294e93f18e8b8f9cfb68c78d6d3061938cfc5dcbe
Date: Sun, 23 Apr 2023 08:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682237465
