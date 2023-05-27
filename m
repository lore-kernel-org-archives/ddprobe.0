Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F48837D
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:17:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08D94C433D2
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:17:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685150226;
	bh=EKIdma9lEdjny4RFnsRwik1Q9+DEvriN1FCEi8kU10g=;
	h=To:Subject:From:Date:From;
	b=Y5bAd03gC0ClFErLZ3MP9D+P+5b0mWNa1/LvWJR3pWX706GT6LXtB4EgP4LkQ1QVM
	 dFpb7sOnpAJCb+mxTT+bmD/oBpdWPLLn3mvWgJnTd1+oIkEESpIFNIxWQMvdmcw012
	 wYn4F7ZdBv5LJr4AHyRVYpBYB0FOsXiGuIxzqyvg/XlOpxCl9WNibQ54K5iHodZJR7
	 1uu8jkxfakh47gU4Jq4OB9/gddNPSo4dCS7DDiZvm5Aq5bnscd39VRlv+3tPBeFk7B
	 +Ft85ainsAiPBZ3iHq339WVowR0Y2w+j+jEgT5pq0hozMROGdf4xr+gNvPEu5eNwNF
	 H0G28BaT1cTWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE16AC77B7C
	for <ddprobe@lists.linux.dev>; Sat, 27 May 2023 01:17:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168515022582.14344.11649158109894576798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a47a37d63177dbe3125ed0cb32e859d1a231ba3e5ea003b3074bfb3027b1614
Date: Sat, 27 May 2023 01:17:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685150225
