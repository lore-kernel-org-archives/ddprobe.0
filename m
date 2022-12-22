Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E24E223AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89601C433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671693087;
	bh=JkXZwzH1QuYuJuytYCu368ihoVnzBSuqVmHV/ioQM3I=;
	h=To:Subject:From:Date:From;
	b=UhspXcPLKCTejYx9jKUWA7tbqUR6r5bOmtgPb/K1epnHdKHpfXppVGpeiFfVETU9b
	 ZHLIJeRzKZ0CchWy3fy8G0U8BVkcXlBI3xs02cmF4lJiW/IgJHqSkscd4fc8mE3Gk3
	 gXDtx/rN6+TMmvUUk/9ArruqVpN3JKdBTCF4e/bSW9kclMgV//PUrEuau7n0UdBh/r
	 4/XuUURPyzqKGr9zep0h0F5jzVO3Q0/KypklTxrFX4trrxZYiHjfCx5tbguRlaPS2t
	 ye/gVWdl3Ut8Z6bmKK+llrpakDuzP4OS98VSW/emrdLdRrAl5JivY8iyRD2SKowjRq
	 wiTZpxzG/XO8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 68471C4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 07:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167169308739.5156.7013791064791841498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2b2a72420ebca760b0ada99b2a84f90fe4020baaab2b4a7fcdf4f10bd22d88
Date: Thu, 22 Dec 2022 07:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671693087
