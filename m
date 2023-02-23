Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CBD433D6
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 21:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E68D3C433D2
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 21:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677186305;
	bh=gPad0injc+A5RdVtdnH4zmyaeOY+jGnvgmBZLsxRtPk=;
	h=To:Subject:From:Date:From;
	b=fQ8W/HlFjwue6p6mkbO9xjDqbeA3V/3rd8T/FK6TP5OnQokq7FaJ3okpKb1DGRhJA
	 wz03x2T/ia+yQoWQbTyyVTvmWTg4p5k3u/HsKWsmqTt9KeF4AMq22sbNUM1g0dmMBZ
	 N1q+zrnsAOumKOQEw1cm8LiJJF0/CuDU+WPN1CRgNh//f7E9LZ06+ZmKVhaaYoCugo
	 JtqSd4BKKzqGMdCne4ofkQwKOWTWkyYoktbQ3x7OEHVv4U1+8rIT4dzzx1hxJ1i+Ui
	 2tJWiMACwkcP/G/W7yBproFWCTpAgvigRHgRvRMNdmYL0ZweopSidISwGnqV/+aDoa
	 brBXpoaKrYPSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8C40C61DA4
	for <ddprobe@lists.linux.dev>; Thu, 23 Feb 2023 21:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167718630581.21334.7206729696209713051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 416b10e58990e3953bbebdb2ba2b1444f3199c9597a5ae16a7b86386f66975cd
Date: Thu, 23 Feb 2023 21:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677186305
