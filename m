Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE89E804
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74EDEC433C1
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666914654;
	bh=yaGn545JlIFDrvg+GOoJk6qZpioVd8Lu1NkavH/OQko=;
	h=To:Subject:From:Date:From;
	b=uLOydq2gbCR8f32DWS+oJZ+ITyXj15E2BKD6uwO11gyROUhlfCeKZZJxnGcy1Ka6E
	 crKBnde1nND/UwHgVkc2W+QCZSiSTczfvGKUizkfCy98GshlmWW69XHul5DE5v1doc
	 cxxtHijrG+5pSF2O/BXGHZKqy55bj66ewB13pzaem/y2szk/gVyC6Hu04g2mHMSgJC
	 qCwdZmgKchT1dNdmaYjYDfMNTHtlvF6h2OsLNtV76MZtFxHFIY2pApxGIRVavcZYkg
	 EgTs9SeUP3bnyBiLPuXzsSiZysCGsj06Z6a9Ib+reUn95K4QNEAocmWg345XUq3Idq
	 S1nx/xexPOu+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560B5FA373D
	for <ddprobe@lists.linux.dev>; Thu, 27 Oct 2022 23:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166691465433.920.2744939311551236356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2dd58635529f7157624576ddadd27f531a97347603f628e587ca9ca3d37862
Date: Thu, 27 Oct 2022 23:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666914654
