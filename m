Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCA6C182
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 00:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F855C433D6
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 00:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668643854;
	bh=0K1UW4gSAXSa2PXdHy6YdpqM5nRTeX8CyXePdyL+Kss=;
	h=To:Subject:From:Date:From;
	b=P9urinHgjbRoTvx2gcBhe9Zt8jvT6gzwNYpKcZGX2y42OL2FjySPMw3JzIdnkzrv2
	 X1JFZD984ZdoUDoXMkYctSaCak3d5hn4NY/Qn3lpdikg+uAdvJiduc+fxpHvcKenhs
	 jZNaBa/+oPtQTBKeQWwks8OEYTmkSaWN3Uu93NJpzgG7kqt2MxJw4eSh0PlwFmljkg
	 y9paSnYt0B0m1N/n9t21dZx4p/T6l09iZ7SguiX9JXwodHjiPNsg8tOz0vOD2sYaLK
	 lK1G9FUbf1QomAkPttsMkgG7RgE+IKeCn80/5CpvsxRcW/8kEXuFxffg/1s6YESxN+
	 wjPK6SjJ/zQkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5209BC433FE
	for <ddprobe@lists.linux.dev>; Thu, 17 Nov 2022 00:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166864385432.31562.4256572616214802576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25a04846ea0d61b41ea8034b5d8e5ac6fadeeaf98f303e426f9dad03a2b828bf
Date: Thu, 17 Nov 2022 00:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668643854
