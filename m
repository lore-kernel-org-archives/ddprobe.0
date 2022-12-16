Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2FCC8BEE
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 853F2C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671228087;
	bh=GzoQdrWkVpUNO5PXVl1hrND26uVfrfFiCKePGiUHFxA=;
	h=To:Subject:From:Date:From;
	b=DBZxJkPW+9REDDV76goMAC2cUMFt8+gfwJssDosdBRaYLaU+X2R0O6mpgK56Le3X6
	 gLBhlb9qevv3dhP5nLNuFIClvU7o+lG3WE5QZz1EAS3+bHqYDhwdArRW9t/uLRrcr7
	 aVOwx+y2EEZKzKfU9IEEVGKfQOAUt4TpmJAOHGqKBFGC53m0d/0ZnAvMWLyNRO6pql
	 c20a3iwwykBZqGkvco2kK43UDJi/LCaO+zXBVQHb3A4q/fq2elxP9qJdxjgHtoYRVd
	 i40QQdJ0xFid+vjcxpiB7sf5tM2ISl9UCMhgVq/yaXuTjw9i65A1zI01qUMiu6EPDZ
	 2VTDAEWMH8OGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C463C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 22:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122808743.13798.6886155650441897309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b86d0c132da42c92072a02ee06f44128eeecd82dbf441a05b248511bce30769a
Date: Fri, 16 Dec 2022 22:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671228087
