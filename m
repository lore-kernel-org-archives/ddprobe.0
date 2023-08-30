Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5952D525E
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 12:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8EF6C433C7
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 12:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693398248;
	bh=JOySS0KJUVRCEDxTWg1iIE0dhbW75wXCMQJC8yYBILk=;
	h=To:Subject:From:Date:From;
	b=jNCTKOOE4E+cMbuQnb+V64qtavnBi35TlOt3gqbbLySkVNGKc4nB3MuFrAcNqQCrr
	 yum9ufm32PW57he88mWjsz1j8e+nX+UNUw/ttcjpzReCC5Z0lqN/QQZxVn1VK+XteT
	 yPfSzXuBNg+ZaZAjooXYU440zvS9GTr592iIHEMo4+Shd2g2SsJQ+l4GKpFBpnaKNc
	 mhk34XL7sKfLSVJ57S9sUbfHXbojkSJDfzRi7vyh7uZmSDpbGMRgjkS7V98nu9R7Bz
	 9HvAv1zy3T9tLFioVHFQvROacr/bgRbiolSShc8mPTSaOYQY+379qvRhwKTrnLjyIq
	 KqBlYSJYo2w2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1884C83F01
	for <ddprobe@lists.linux.dev>; Wed, 30 Aug 2023 12:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169339824875.7871.12750720809131384679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031bf1ddc9c13fcdb8e0cbb1518665a8643c4f673abb41df9a0273149c928070
Date: Wed, 30 Aug 2023 12:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693398248
