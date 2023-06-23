Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD91115
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9258C433C8
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687505588;
	bh=rsHifOMFxWjftvJqd6+fXvNSBf8iDSd+n8vkRhofiHg=;
	h=To:Subject:From:Date:From;
	b=rBB/gpu+rbDdEd0wavkUITKJEguYaded7GyWjxUrUSgOiBJ0SGjImBi1yB2HS6gUE
	 Fzb5z7gZgGiQ+mMuDP38ntOGeLS0sTfUEb3pUt3CqUmfcHUgD6LS4RsOjdr2n1bD+F
	 Dw8Uwm5WcFaGkr2gH3PMFymG30cP8QynFTH56CNkTEOlsmgxxfjJday32WuT2+1oN6
	 PH8lBGKGZMlzaUG5cWtKTUbKbtZ34o0q4rB49I81HaqRYyycaKlXuZGm8MyruFrZS6
	 glzKzMvkya9nOZi8VwFx+QDBNXJXHTvFS9ZyNHM3XkhE+oNY2iZw/GAIMT+rmxjLdn
	 6SUVALKNcvKsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6113EB64D7
	for <ddprobe@lists.linux.dev>; Fri, 23 Jun 2023 07:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168750558866.8387.8634313827822711205.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90c5bdc4c13c9015d58b32a7898b32f789137a8fa3a3d272057976b3493296ce
Date: Fri, 23 Jun 2023 07:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687505588
