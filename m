Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DED533C4
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:14:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AB7CC433EF
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:14:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681902846;
	bh=vgU3yOpfmdj64IZT7+Rd++I5svPmgprwEvS9CPPB6Mk=;
	h=To:Subject:From:Date:From;
	b=GNsKdcVpWAuJusfkIdg84YjeYr2nHMu5smWt6wfyZ0yEeLLMJyl8p1Xf5MmPrOjyQ
	 BjPY0GQCCYcdqY7gRm7rTbIt6gMWKaLV8sG5Sd7h0ynpX+TE5Q7PaVzd/M5RmRLadY
	 S9xoBiKIYPh7YqAriqH2rD2roYZdMKhBJQPqtnl1swtKHZB/5iVV0beOK/+GQxjzjT
	 CauenyIel9Jotg5nvqVdZj9dbdBtN2jssaJATyhYU/zTjawxZ6IBPMHD/SREo9BsLW
	 A5DzxEMPD6Buo7F3DYxssiRLPgCBSLQaCGTvX5RWDalPuJM911osSLlIleUOw6xf9P
	 woshF3QI5afqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9184C6FD18
	for <ddprobe@lists.linux.dev>; Wed, 19 Apr 2023 11:14:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168190284588.21598.10741299583428169303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6edb8026d691e13c8c2292fb031ed0be53fde8f3ec1276524590902e31055df9
Date: Wed, 19 Apr 2023 11:14:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681902845
