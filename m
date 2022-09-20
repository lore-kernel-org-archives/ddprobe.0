Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44141C14
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69912C433C1
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663678853;
	bh=UyjsU+YW6L1VSe6fc5F6UBFA6G5mWRbVwLktISkRov0=;
	h=To:Subject:From:Date:From;
	b=EkMIEbvic/0LSycws74AwSzqhoRhUwjLmvwS8+7ZqO5hq1HoCN00iaXcAQT1mO1ax
	 oHNpzpas4X4HbAn4pmzDMTjNP9bDiIDqCRsHWxUHiq2aCJmTn+xtWPhqfL27ez5PTz
	 KN1gPnHR7oCELeuEwNAHr8J9VRzexJC9r+ercq/6iY0HkgTAQ+aUjZXlLvhAPYnnhx
	 z3SbimprkRKP/AxtBpDndd9EvxviGnkmctm+nEwgYrUPQuPFLhOIHFaqSF48eN9Egw
	 oNlggGzDCaucXBlXeLff/sArl4Dncqi1DKLZqCAalw89H0fp3Xx59zrTT0yFKvx0Xb
	 XtNDhYKgCNkfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56141C54EE9
	for <ddprobe@lists.linux.dev>; Tue, 20 Sep 2022 13:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166367885334.15534.5180843706238061693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a89d367a9cbcd93297741b732112fd2e5bcfd7f9c5683be53c8f2cdcc1fd1441
Date: Tue, 20 Sep 2022 13:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663678853
