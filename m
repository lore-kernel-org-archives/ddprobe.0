Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C77E323E
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 21:11:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBE6C433EF
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 21:11:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685999465;
	bh=NNzuaYlv6NF6SRKY4+PBEUdUd4lWRbHckhgl+R2t7Kw=;
	h=To:Subject:From:Date:From;
	b=crMiTu9DPrTDHpw78sRKb4k2IGtUDcy8AAmyDbdz8nOsPkKFQB3e0BnuOdm0S+Nlm
	 tGa5JNcoTgIQLt4rAoE/WhuOIhoLyEz3Rh3Z53c3yAAFR3GQ+8IhusD/FFdWCC9ubz
	 n+ERdYbwvQEC0ac2JSAQM39tmYMFWZ+TYSj/p6nWdB3mU0uYDE5pnf+XyhOq0gpyrQ
	 5+rpKXWVqDFGjcmLJLk3LWxG4nZi3UM+0EbXuETa+um46f5aEczC3vpHqQ3zrfL46z
	 TRP/2e59Qi2JKDCz0at3rscr/OiKyi3psuAyicJzQrOdsZyHv9mJKOw6ngroVwh1nB
	 rn9IsnGJwuFHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C05A9C77B73
	for <ddprobe@lists.linux.dev>; Mon,  5 Jun 2023 21:11:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168599946577.13770.11055257977761396568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5bcbe16e7bae92af1bc0ac4cb19ae0adb5218341fef9b32ad995eae4d73ee0b4
Date: Mon, 05 Jun 2023 21:11:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685999465
