Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D49A16ADB
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70564C433C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666648853;
	bh=b8i5D6m8RuFWAt1KTv7lIQVM4A77JEKMh7ejWmHrct8=;
	h=To:Subject:From:Date:From;
	b=XryJ5zOBQR+jfCkeSTs1NBB3yIGfnoz5MkY+o+aD2YJRAnEbiTVNTZqoPFqEU55b9
	 EsYYO71OCDNbgJacAw7K2qAhZhE2jhty6MMlmuC4xMcYzKiRKnW9Qb+H6Bvw3bl/X+
	 s1KvcnUUC8r1X4Cw6R51xpKrrisHfUxJjJF8EKIACV2NeBaR7G8Ryyj7L3A7XBtrfl
	 VyG3p24CbnM2i3JzPlZVPVGTo1BSqiN7DOB00lfRzVaILaHUliSqnKQuIbf79lrXYw
	 KB/y/WJ1U/jFJ/VEUJbnuiLGlsldJqZMjDD2FzkVdgLZ+ggAwKQRA3s1U1/y5IHyRY
	 aPv7dVweIVVHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54D3FC67871
	for <ddprobe@lists.linux.dev>; Mon, 24 Oct 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166664885333.32109.4413656393581758151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fff4bea34fb21ac6e0206461b951075597dc26be16543a58ac6a015344adb61
Date: Mon, 24 Oct 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666648853
