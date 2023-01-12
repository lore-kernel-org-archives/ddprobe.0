Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9FEA378
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8682AC433F0
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673493687;
	bh=sebsA3ZdFwG0U5tknGZ6N4Vo7VBYIh6LM3/Hk5b/E68=;
	h=To:Subject:From:Date:From;
	b=D8eQ7EkrgBYcibnoqhxicVvdBlFbcQ+u/GMLYbiNt1Mo9HKlG5sU5RHXEqYssddDP
	 KzNfjD0zszAhBK5oFpPhZtCHYERT2QrCODRCIC5EIZbZkhUpTUlnxNM+XPftiL8T/F
	 qzIK5PeBfc25LOy48DRPNV5HJ/Y68wIJTZsmIH/9NdojpS1XLJsv9+rIae8zRRgy+v
	 nN2wybWuJZxwyTmGWppMPjuaFUWVRwOh/EZOh2zzLeaH5DnmzCw9PqLXqLiC+eD7qv
	 DaFfz9y5p1SD0GdPg5AMfv0zFWIp7bJ3Gc+f34f4Ufy9GVIqH3Dkd+pswIDvNF5fxn
	 dCYSCUkVlNQ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AC36C61DB3
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 03:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167349368742.23362.16422725659613431595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c7640a5571c2db8a7c2d43d5f928d0b5bca4e90f018e5b6ba7fa120cdd22d4
Date: Thu, 12 Jan 2023 03:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673493687
