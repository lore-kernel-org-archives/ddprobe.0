Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D554C2F27
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87A91C433F0
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672932087;
	bh=wajU2nZMrra7cf19M4WLc8lyG4S+rWCaoox8d/gOwmI=;
	h=To:Subject:From:Date:From;
	b=Bs7VOFLoZMlk9FPPDDLD/d+gtTHSlbinq9VuRZp2UUP+WdjBaJ4uhbEf8g/BMvmzQ
	 I76g+aJ+mbdN625qlc7xTkpHnFCau+SRcD3HsL7Z26s6hF3NIaatIcYLIDYEoUy5qm
	 mi+JmmRNiq6taTx5K/VVq8IDFowrXuX9pPHS1rinzVjXC0h+bp9GGVSY1qbWWkusI4
	 GTAbenHHpss2q2QghmtpRfDgpGbFtOO64gSPcHh0oUHJU9Djbfzb0WqIC4Utdb2nXl
	 w+ayuR3YwpO/YFF/Jvm8veTdQWd3uo+d3JII4cS0Qctq9+oQgTaeerPvyEtdOninTN
	 FRnm5PB6fMWoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C087C3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167293208743.5951.9260713709458726888.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0273fdf794f35e7a07704613280fd2a9bf613e6bcff0031dab52f5eb5724a73f
Date: Thu, 05 Jan 2023 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672932087
