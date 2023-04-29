Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47DE21FD3
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E535EC433D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682783765;
	bh=glKsYMYaKHce7TRwi575toYq6FKBXoUOtZD20iQ6pvc=;
	h=To:Subject:From:Date:From;
	b=QnzHMcO6iXCQkAX7NPr86lEmjpZeXZTa0iFtKK5oasXxXsDO92fEq4Jar8HKhutWm
	 7Df145xW+WnWkKQHlsmiYmQImeNI9xc1Gdw0qgi2Juk917xJEjx17TVb4nHOJ+k1g3
	 VvKRUrepDS6Kk2GS7NBqwdbJMcoT/IRwzjLsNeIS78S1V1cRYbjZaIdduyKPGlqAuy
	 Ksqb/tZtSxd+XDVGjeirXDU5apWx0cbUqsEADESvlPaL9IgNLULv75eUQStvkkCqi9
	 6+41lgISZTFwV2rTy/0k2EJe24KwowfGgmQNualy7G/6At0cOlFRVaX4GqkqcoS4Gq
	 OaP81E6iYZJwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7472C77B60
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 15:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168278376580.30426.10205157561055638693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 448c16b5632b0318ed37c63bdabc927cdf9aa74be6bd446030a30c4597758045
Date: Sat, 29 Apr 2023 15:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682783765
