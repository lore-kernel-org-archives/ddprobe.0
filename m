Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48019377
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:12:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2579C433D2
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:12:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679901126;
	bh=9FD8XtqIwaJymqlCZUUt1oAfwZI3g8Nb6QoELsBxWi8=;
	h=To:Subject:From:Date:From;
	b=D+meBkQd4tFa69hkS5NGqob+kHe+JjX7iYZIiWuf9B2MxpPRQeNvZkg4ovxlgmrjh
	 54NJDmgjB2cgyWXYaX4bgLxW0cvzY6oikTaMBgvNwrRJJjQ5vmXd0HbEuXBKjyive8
	 nv+/lBxS7g4v9bHIOg+1G5jLCijivfCfw51mXVQpIBru+oCtWsD8Rfbry6QW2uDK/3
	 2aoVzYD21q4ELpAYJbn2Xlm3fgjyfqek/mekfPZ0D8z9aNm0teyNexHOGK8/B3rg0O
	 YR4qlTGV525UAfcTwOt6uoAkRrc2cYLIdS9vp33AmlOsDUVKdL5fp6Mgkb8IqqD7B4
	 4we8qM/k6mNnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D65EEC761AF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 07:12:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167990112586.25829.756772113925413666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 281ab32bed8d03fb9383144034b54fed7d7f03f3c3920f1d2c20ba0077e3b5c9
Date: Mon, 27 Mar 2023 07:12:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679901125
