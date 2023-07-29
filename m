Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53ED47C
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 02:12:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B1FC433C8
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 02:12:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690596728;
	bh=KNCfWUQhBgji4PELk/8ICIb47oYbJLrQHg2BU8/bIV8=;
	h=To:Subject:From:Date:From;
	b=khHvlVOhJWVw1k1rEjX29l5U4dM5t1tvivKh62SOSZy5ZLyZEbC90QNZCmh7Hiqo5
	 AJ2rpHg6Yc5BfOF1C4Rx+bg90hlyVPK6gJszP98ZbIb+O7ostxZ7fx81VpdGXfCeUv
	 FbVhlwLqXeNYOWV11Ht+If3PVo5XclAohfBoShlRMwkxGC8SQwKjpKj7WXraX1DxZP
	 O1STldJDmy+vvHMa4ULomNGaAS9E+qnsRV6th5hwtyj/pvsbeVjAz3tgd25Xf4M0M6
	 R+BR4QqgjqSbPsd272GLo8Q38VvNVgPCZqrwmJf9CwskmBptaG8v3ewEPBwLFczjMH
	 bqx/y3/Y5sxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4BC8EB64DD
	for <ddprobe@lists.linux.dev>; Sat, 29 Jul 2023 02:12:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169059672866.17618.17376800285647921486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4e92905e37be56f44450e96d37117e89d1f33cee6efb1efc93695d51e5c56a4
Date: Sat, 29 Jul 2023 02:12:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690596728
