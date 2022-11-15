Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9837139E
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 755C0C433D6
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668524454;
	bh=Hk9+t9CHGb/QqEX3K2ot2w3K6e958GEPSF7bMq5F/1w=;
	h=To:Subject:From:Date:From;
	b=IlzmHTGas8xIY7z0KftwJDQuzifItD5sBnZwFfCK6oZmIgjmJPpjJ3dy0uUn03FBu
	 vytAVfsj/Df9shWwquhHFpbO3TWWFnLWglhRG2DWCTC/oZOnJexEF//B7oABostQ6d
	 d7V+UhIjgRbILcVpPwxTzj+LWOyAEYf//UGqsHmio22l+YfwVtEyBap6Hm9mkviHMF
	 dOLM4b3J6m/scym2/zpXgVerMe3X6Wkmrs7m0LNbk4ZP5rojYccne0JLU1SuZhuPpJ
	 RdyaKG+JjCwhZkUDUVM0s9+R0JnuvWrB8mtFkIFojtYLW9rSipdtiUBA4MBt714aH0
	 p9J1mybtjtsGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5BBF6C433FE
	for <ddprobe@lists.linux.dev>; Tue, 15 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166852445436.19293.1336570544459203597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be4e95c53b137a11548b473271280d7ee2f6c3ac188e9cfa3ba23bacd11611e8
Date: Tue, 15 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668524454
