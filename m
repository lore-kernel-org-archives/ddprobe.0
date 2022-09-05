Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C48794416
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70FDFC433D7
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662394853;
	bh=HvcSlGpVESLNgAY8Cod5zUmg103F0E+XxLuTLWrWurk=;
	h=To:Subject:From:Date:From;
	b=gLA1/MQsG3//AlQOuq3aM/8cpw4Gf//BCveE+hwPAfysjYo+eVuovripMGoRA6aTu
	 P9/LBCk1zYUuXx5p45jpAZMPo8F/Agor6SwEsLjaxKD+H7e01RiZOTfnFxYKt/fW/j
	 m6ybCJUlUFsCEMTdxSvkWKSDkgZTqgrqbxSQ2YRgfWiWGT4IHfdXSPn0+m2eSReRAf
	 L7IGrWo3q5fK9PaWp3mGpghmow1ZPRecFlwD5dYun1Vh9sFwQj19MY6hduto7nKqqD
	 M3Oq1VRatT2MhKqTsdM8UUkzr3wqdUa0Eb+y7d+HbTTZD39wNXWm9EJNA5tAF0nRit
	 Ta2SEj1y3sTLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54B6DECAAD5
	for <ddprobe@lists.linux.dev>; Mon,  5 Sep 2022 16:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166239485333.24795.15151892399874107504.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 653490dc5e3660351018fc296309edc08534daaf22fde11cbd78bbccb84d14fe
Date: Mon, 05 Sep 2022 16:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662394853
