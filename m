Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 724B81878
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:48:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01679C4339B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:48:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686368886;
	bh=vac6wP8+2VrlkufMIErw9/JloKVn102IoLm7Roau3XQ=;
	h=To:Subject:From:Date:From;
	b=hMdSUi8g8h+vWFwJgfpFE6OwKNWK3HHUFkTrotWaexWk2uP0B+pFqbroiSBv5GZx5
	 BKrfJ1Do7AMYl5+bfWH4Roq7bM2FpMd0iSdIS90qHrW4cwte7mqccnvLdqjaCDEaOJ
	 Jxcl2FvFbPvyC3INzAzQMYeg7t1upvJDzKgVqCI0C5tqqgPDpJH1BudlCuW1urk0Pa
	 ozBGz9qO8CBlnVc3qPH5ak79HKB5RCBgASZ4fbuDwE93SS/iJ3xDAP8ScMTLtwYtLQ
	 1xOGsfzJMojNjWkjUlRHF7ntDkGJWtlouuO9pt+BdO0D55NStc/0UtY4V5rmkDsp//
	 cyzvE+0M7uNng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEC05C7EE29
	for <ddprobe@lists.linux.dev>; Sat, 10 Jun 2023 03:48:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168636888583.4103.11392741542661517168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e527809fbda20b64bafe6d0a180c407fb2bda2c4c026b6de1715f71e0c2ecd2
Date: Sat, 10 Jun 2023 03:48:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686368885
