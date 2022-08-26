Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D726A28E8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:10:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CD0CC433D6
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:10:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661505052;
	bh=cnsZSeauGNfvbs3oTMZPzt6mq0Dh8KrwCfZU9kHO3nU=;
	h=To:Subject:From:Date:From;
	b=p8mQPDjd3MxCsGWZSJdzgfMpZ6Yu9SQSSSInWaiCAtV8nhPouJwsxIg+Lt8Dou15M
	 5bcvvThAl4/MMv4y6Tr4h+7+CjQfSZxx/suY4KOvvt2P/z2Em0e/JD34TOMYXp/eCi
	 Jj6R45BX9YgYydpUOxrZX+oAeqPZ+/akNK5UJtRTYmOpjWOqDf5ltdhjjG/qEhDDqv
	 Xr+54RKZhvqtXgthiYGH9ttlaAh4shRHFocOj8zjD0wIZw7//vzx8DKJKBoBi/f8pf
	 W44zREQW7dEnyVR01UpcUzGkDEUlTcTJ7u8aVLX6LyTDo1WQAK7MGdNTE3cURIzra1
	 lXA4D415kf5ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6099DECAAA3
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 09:10:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166150505238.10225.2124314786896517401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64609cc873eab98899592e983b04a7c151fd1761ba18c6385950929fc973ee38
Date: Fri, 26 Aug 2022 09:10:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661505052
