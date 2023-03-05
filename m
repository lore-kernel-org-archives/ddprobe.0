Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A1C15AA
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 01:57:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6C36C433D2
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 01:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677981425;
	bh=w9L/vP9kAMgH3Xr49SdHx7GnnBoZcSLkdtvVspTsD04=;
	h=To:Subject:From:Date:From;
	b=pwsvN5qz2c1Bd/oFA6THMjbpgYDdAGB4MH2iQncDmHjD4clZi9VcltnMW1w2WFjxp
	 Sq6fusu40iq4jTP1vUN7UYJ5obL7IdKtWUiGTFEy29vW72dZkfb5fd8XZUmVIm9vxZ
	 sU9S5IEbY324m8F8P4Lzy3l8uPocZ6/excLyhRT+UtOcthBM7Otu1K/C5SSGZeklu4
	 pTodDSmopaURjLsBQWAwwmaqgkWeh0CT6Gy7zWw8Dty/njuab3Zqb8oLW9OY1P9536
	 VO5ucXwk4R0nvGBgwabV/wXaeSQVxTIAe/gWrxdVjTaujCQ72feJngbxwpCvoF5+oL
	 NacFQY7dnzQpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63A8C678DB
	for <ddprobe@lists.linux.dev>; Sun,  5 Mar 2023 01:57:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167798142577.32674.9738344631580720904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf19da09ef55c0838cc123d344cdc7dd0b04f8ea08ff1fb8b0db02212e2faa5
Date: Sun, 05 Mar 2023 01:57:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677981425
