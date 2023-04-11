Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 436D58F4D
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 16:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF708C433EF
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 16:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681229526;
	bh=ztwJuBaapVJX1HyvNcd/A/xZrT7ODRXh+hyPCJCAxN0=;
	h=To:Subject:From:Date:From;
	b=uK+vbc3ByF0EWsdfIpTBPDg1Hi2yvO69jmh4dWKIS5IENA6lPtcPDzEwGXH0YbvFh
	 NCHeuXMOB/8Eb+grMvE4GdzWEzTAaY9sL+Fht2YCBfWew7gLLjw1eGQPq0C6iCVSUk
	 lgliCBV9tTDwpyxa0Sw9HndE2Sn5LIaqk9BKOGpGzotSdm9Eg03BK/YcFy0fMUjMqs
	 a7ItJ7niB7GlHVv+D55F2zLPPYTG76nuiUg8TBd+5zcLq50lNDXKgjTXaWfo6BQY7z
	 XE5VuRRlfAHFBgcTsLOAarHBfYO4bSSf05ISKgnKEkc0xwForHHcXAJkoZv0M89Aqp
	 H9MCd02qS16iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C424FC77B6F
	for <ddprobe@lists.linux.dev>; Tue, 11 Apr 2023 16:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168122952579.25744.15912266863943265655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4073830f6e3ea72bcd7bdd3e3d47acd19994b2a3450466cc5721b764dc008028
Date: Tue, 11 Apr 2023 16:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681229525
