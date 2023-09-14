Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FF5710A0E
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 08:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD26C433C8
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 08:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694681048;
	bh=0DhgCfggww+gD/3DlV078avI3qaRrBfZuPZBZ17LS+M=;
	h=To:Subject:From:Date:From;
	b=jZ03PtmHQ1v1r/XhBDZpDuO8hFjH7oNaXi1x7aursAAGtRd9ao89zQxPphFJfKe60
	 SsqPlm3XirIWGmINzuyGEbykro2P6z3eFJvUj3kIlJx6nKAJYhrVuZRYXVBGcawc7Q
	 ZqQiIkhZ6abweJG1lu5MbRtg7MLyGbblg/njp0ZrGA5S3MaZxh3STJdIeqaZv0eCqV
	 eL3LFJHacswBWt3I5swL3Ds760M46w85WjgK0ZQozL9Jwy3rXXTvUxDP1PDQfdr3vC
	 2E8QdfzBdojuiYCZvpHyUrgZFT+7iAOIM2ZHt6jCHwbbim0CQ898rzzFx6Gclfiv3c
	 CmlqKQ4Vld+0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA1D0EDE990
	for <ddprobe@lists.linux.dev>; Thu, 14 Sep 2023 08:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169468104868.23367.10522888335617249898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e02c39ed1eca4a98bad4e9bd5b0772b3f411778837c568a59f18a9eb2fa127d6
Date: Thu, 14 Sep 2023 08:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694681048
