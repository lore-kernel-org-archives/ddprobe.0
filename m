Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F00E7F
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 08:06:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2A18C433A0
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 08:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675325165;
	bh=j0DIyG/bS1KPcPV4Gj3uzOr1G0uMdKJB8+uUnfZvkRc=;
	h=To:Subject:From:Date:From;
	b=QXGEJ+VBG81NmhaSPd4kPR4Jk/K7gLPMqfS4Nja+2T227jn3oks8j93MDwV/tWXjs
	 8IcUKNthGiTi+3Gq0248XTC89dwlCDWPwmmr8ZLerJ/bLj45sNSgrvwNvrsA3dvXnc
	 CRQl1Rfsb0CafgobBog+cveLsbB/by/HwjmZtqlBPv5kAHxpvrJXLit3yJjRUkk+8+
	 2UmnxCeYsluPwURHVwcCtyYIJmmHpnXOdT1YtPbLrmcK+mdB553MZUfrn9E4dJzPXi
	 L2DWpSfGOIoI7t1KArL29pqw4tZz+sbPdDBWtkfIEohPshFBYDmvpO8fFZQkqKTE8I
	 wwQvTFNVsci5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49E1C61DA4
	for <ddprobe@lists.linux.dev>; Thu,  2 Feb 2023 08:06:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167532516579.3732.17653395098736837020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91b4e55afa5b3b6f4c4036982328de3ec6e0d0e1456d22b364c8b23699931b1e
Date: Thu, 02 Feb 2023 08:06:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675325165
