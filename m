Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFC5A1367
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8414CC433D7
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670400654;
	bh=qVYimzRf18i7LxqD1bJMwVKrz42liRlu+5VAyZdk//g=;
	h=To:Subject:From:Date:From;
	b=Tl132kAvpT11cxeqJ7wcGeP0Jj9JvPh2xncXXgwQamDYwWnFyjqf3GhgUKRxraYjc
	 He8uJDbReUjM35KT3yyV0DOj5NtbFe2ybD5Ks7UDHAhd916CqAVFjsfSDx3EiIXNlJ
	 6GYEtBmIVCGsxuhXA4g7g8RYEy7LVG+2nF2kewOHoDXMrLWCzrg/NiThp7Pvd6QOBV
	 s8/VrjllsAtspDP5aXJeVPCKAq/Xsg3UI3QDoxFVc9tMe8dgWv6ZhPY8RspKNcvwvv
	 Tb4Pw8LW7O6nimhgI1wWFxEN8hDVsunscF+dCoDQybI3R4h2KtTzUrvwWHjiViQ/R9
	 eqiFP2qQtuwQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 69D0BC47089
	for <ddprobe@lists.linux.dev>; Wed,  7 Dec 2022 08:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167040065442.4706.12587713723039435341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70ca52549505fd470e509cec568eae05b6ba3799ff44da77ccfd2909f1a4364
Date: Wed, 07 Dec 2022 08:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670400654
