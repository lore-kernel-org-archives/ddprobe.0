Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461752581
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:13:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62F3C433C7
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:13:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1691316788;
	bh=U2ZDhyFsMfGKKak7hp0efUxgpk0yyFXqv/yBR3Yyb10=;
	h=To:Subject:From:Date:From;
	b=Hh042MP2AUklyTflkLyLXo2V6FXKj1gUBGLobo5dr2rVJehxUxLlplo+YLYvYJBlC
	 xIaZpXQn052NJHsJR2sYr6tgykPNtzaX4cKJgudr9CtZU6qfDncOshrrJctjl5dkjh
	 B+wbw6WtE/IGFQCLUtCL4/GsQeaKvJqo76TDIruuTWSdQ8PDxj6wZVVFWfepda9+H9
	 scUKI2/NVZdF22HqnAj5KSQaqfwhOI7KV6c9dH6jesTkYslXhtMSCfoLT8Sr3n1Dnc
	 FsbUiX/o5iIMwwSmZ9F6DkzPw13/i3QpIrZ9BTrbz5MmrkHw9L48Uz75m+L2XfFO2G
	 LFBmNO5u87KCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7ECEC04A6A
	for <ddprobe@lists.linux.dev>; Sun,  6 Aug 2023 10:13:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169131678868.21451.1590028552368016640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: addceb356d095e717c7dcbc91b400d39e62ffa6092001e051f9760dab2956ebe
Date: Sun, 06 Aug 2023 10:13:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1691316788
