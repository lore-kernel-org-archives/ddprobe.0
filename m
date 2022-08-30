Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C453F610B
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 723FFC433C1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661896853;
	bh=61MhmJLHIxoRnuWo2ssfzlRU4Rzl+mWGJ+s2JPg96AQ=;
	h=To:Subject:From:Date:From;
	b=T9XGGRvmC/ofDOUI3kXsZd8a5tT6BowMLDiXzL1Mt2n2uTusgJ8kbnXeivW+GF+zY
	 cOVgQ1EQvGYYRP31mZYSwjA8hlZsYwRMTtOIM4nlnuFE5qZCVlEeetq0QwD7G05uv1
	 smw+Y7px84X4A36dtaBPrPLlD09grZSF5ZA/K8/U1EH2w3C9HrOyQbKDFBmbsPbLZK
	 Q0t3FgzzKb2Vr5oahTzgzcQqzhceQlT5jPWcHVwFDC3uicn1DGOcX137gs/wXs1QHm
	 pSrhydRlZMbNMiRt9MFdweJ4Ara9HvESafKC1Ps5OeFk3pzlJKFKdkZ+yzCn6foYBr
	 FxW6smv4AhQmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 55E58ECAAA1
	for <ddprobe@lists.linux.dev>; Tue, 30 Aug 2022 22:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166189685334.11326.1988867563520075605.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aabf0df65565803ed5b12c3f9172a541d179776dbae44b3e93e136c4e96a840b
Date: Tue, 30 Aug 2022 22:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661896853
