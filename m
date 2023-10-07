Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72BD0E553
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:07:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ihv8iF8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB78DC433C7
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:07:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696666028;
	bh=WuBzVA9IPO2rbXZcnixdduQfKrg4BNU9a23N9xSgBS0=;
	h=To:Subject:From:Date:From;
	b=Ihv8iF8qJJWaGNTXR1ZY3l8qcr+Z01VTf00xKeCd8hOm/qwqagcj5Fs5GiwrMxXDR
	 5toevlt3+rd4lT7w7T1sMOpv/dl2tEKbxSEDpNAhHFMOHoMKrYY66Zx9EqP7wtmnA8
	 P+nM1VWFBIlwIS2/h2INZ7G2F196vdrEpC70EBSp6MSWRHplbbInbuIquIlfP3Qv6j
	 gJX2Ul+d55k03kiP0jvfMME1UQXxc5TFelf05rnbBDGZcleB+neQXIoio3sA9cMGuk
	 5HZEky7F7JXmuJjSt2lkmvOlw9QjuJnJX+tr7lGnwa7svLNZDYHiEs27Z/xZpLXrs9
	 M1pFB1vAHh+BA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDAABE92FFD
	for <ddprobe@lists.linux.dev>; Sat,  7 Oct 2023 08:07:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169666602874.20232.12849258878369266702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc845e8fc52cd1bcf879b720c5f302f96d6cb69f17d157ff9fdf7e7cb4c42a13
Date: Sat, 07 Oct 2023 08:07:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696666028
