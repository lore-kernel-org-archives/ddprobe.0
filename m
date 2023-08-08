Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E18810F5
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 07:03:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EDB2BC433C7
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 07:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691478189;
	bh=ZQ6s9HdmErjhCQSdoJr5pUP+YwBVZytplNohXnNjgyw=;
	h=To:Subject:From:Date:From;
	b=dAL/CnB65lRYAaF1QEW56QdQo67A/+DZd1KYirMpk1nYRWWqoqyNVOL3hU2pdalMd
	 nBFq4jYDFr4XxdMH7vkcpAuaJ3vyNt7SBYF0yTJ/LRKqt1nolsiEFMCHiQMJHHug52
	 njA37sX3VnCK8MSEFFAY5aMRhYrBaDv1Kt4IGjvyplwQPgufdTyJNeXtcgxkGdy1UT
	 F/A3dPMVVV3VFXpWKgNfyffInuE5+xFLrrECm5/ObljDsTiXiUInNXN30fbYDb8IuG
	 4OO31TIdapQR2Kla6X4iSH/D3r738TrnXpX840QdzeypUM7tt2j1WMVKqd8TYOEju6
	 xjLj2J1RPPK3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE0DC001DB
	for <ddprobe@lists.linux.dev>; Tue,  8 Aug 2023 07:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169147818876.13915.448884335191229641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 154a6a032c51d996a2135110874cc2a13bdc4520409be0642ebed36dc3ca6eb2
Date: Tue, 08 Aug 2023 07:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691478188
