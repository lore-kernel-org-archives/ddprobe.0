Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D04167E8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C3B9C433D2
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673785887;
	bh=ewCdC48plqJtxqYkJWsOqxNX5PqJ9h3g9eE8eZIH9Jg=;
	h=To:Subject:From:Date:From;
	b=oALFPhJuUlhrPVokffHvaGQVXf+8+lgKbjM3AmMCcHFEWLnXhubkIWf8q3AGSb0a6
	 zozGW61MN7Xp9fD4Oh1eFtrTJCaondW4ufcFGOyHuLu/L6E8onskJQJSjXsLEWLwRQ
	 kzkNXj6P+Lq9Mvb/JxOBjSXFniInYdqqLeMsVgfiysU7ZI4GBNjK4ZWEukgaCW4yQA
	 RET/JG2snpw41vVuFQLD9WaxhTU29ZZ7jWle1HtFIPRpweqC54bVRKbZ7omWBaq3iz
	 uveckEKy24F35p2YiKSw65PW0D/ziVVCTKqBEFW0qgEnHDDI5KuBsV6KCug3jfFwTn
	 qkr1rzoJaajMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6387CC3DA78
	for <ddprobe@lists.linux.dev>; Sun, 15 Jan 2023 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167378588739.27818.9880190076801458636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75730873ef8508b83b94a423aaa5293fc3fc8885fbd89a7f4ad98f2e45964680
Date: Sun, 15 Jan 2023 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673785887
