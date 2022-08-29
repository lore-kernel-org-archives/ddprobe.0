Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2BF53D65
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6A461C4314C
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661781052;
	bh=zfVb2mcnVtZzH1PVNQI82Ppph3gb4wHbP9eSoA2A1HA=;
	h=To:Subject:From:Date:From;
	b=OPXdRxAYzbbAjW9fWaW7+Y0plvuSshD0Efa2dT7iJdTLzHlx7JuCNZG4NPhHzA0LQ
	 35vft4e+b9mBkHlOUB7lnwZZ/H5saAiUjfbWZLjFuSfvCnG8PQWa6c7wzx4qGrWAfz
	 oTPY0Kg96XzpwftL6SKKfd68d1d5Y6lpFHpBUyR4of3hzkz0u7epEWmPX57483Fedp
	 ZVmLXCg7numzzY/EU5pIEcU4HUCPVRAWacVNDHfFlsQ3UsjZF+QMrbmG2ana20GxZu
	 +j+BW5iyh/rqbBh54aSAAQ/J+XWvly7fB1lv7cRLCSejabsfcl7hx12ZVB0whUwsIl
	 CeX4oJiK15p2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 539AFECAAD2
	for <ddprobe@lists.linux.dev>; Mon, 29 Aug 2022 13:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166178105233.31746.12659468402179887296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81ea2c61cdb4f285ad2345226f5021dad1956b680f658a0f8e779767f2c5f4d0
Date: Mon, 29 Aug 2022 13:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661781052
