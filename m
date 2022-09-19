Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4496A48
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 730A6C433D6
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663605653;
	bh=D02kJ9Tr5dZtKEHR99GAExnVTfyqdRPZ0/9klIAvSZ0=;
	h=To:Subject:From:Date:From;
	b=ok6yFZxCgwGwj+R/zSzOlrsrQWLqhXghInV6yyMw+aT/6x/98E1rE/HhY/CavEdmy
	 FpUIGl/fIHhbEd5R66HB91qavRdOnEu//2N+g4CJUgP9ahfzLVq/rA/7qHu0y/6ArG
	 X3ZAVsfLpem9+hGwRRJQ7FbxxHVgm+W8kTXIkttQou5iy398QOZ/yOfL+nQvAT/x+6
	 GXLNRNQrxCpFMDhGOcjNUYusQTCxI8Pwc2RdziQrp3g/FStAeHJAHQatQLtieJAcY6
	 fEDtTihTErObAu3cuGsXyxgLJnwqj+OEGelbfWdEfaabDkeDWhyinuAdtSt5t6CnOm
	 hRY00rWi7qVKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53D75ECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 19 Sep 2022 16:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166360565333.30185.15498664701215592332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5eac7a8e6708b51f89576364efd554bb1daf98af69c3e48b2ecbc6872c7f3ec1
Date: Mon, 19 Sep 2022 16:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663605653
