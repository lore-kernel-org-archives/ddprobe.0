Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D9D6375
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0CBEEC433D2
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:58:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682917086;
	bh=+X4ZEP0fTQsmRGhIdhbstjU72eceH5LM9TsUZBtaXMs=;
	h=To:Subject:From:Date:From;
	b=T2cvg3lpl8Vom0QbrHzGHzeKgN00i31/f+ZkhsT2LghTfFLSLnecFlr8m19prmyz5
	 VJsYXZ/cPcGVqh8GRILyUIaqPUJ395DrL37DNjHHZGefyqjXhAibbptPkmwVP2Mo+t
	 Jfxw2JVUBn+LAzm/99NrzhV9NOX3YCmBlwU5gdOtyoLYTamsfJTgC4x/gzOtaDgFYM
	 6vRA7MWFLKkN3p6+1bgwSU20gV8Rr30qJpqsj58ztVwWot/VV4mtPW91D+fdVnHen/
	 CQqR+kM/ro8rtNk3FAfDms8UIZIO4J8qbg4whfScpw+D5XJPa70qlm3JSCqjDfoYbG
	 md1wVApo0GADg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DF44EC77B61
	for <ddprobe@lists.linux.dev>; Mon,  1 May 2023 04:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168291708589.22553.9914427764500767307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f509b647329dac8b067205579746100b2ae2dd91f4641170cec5302c401202d4
Date: Mon, 01 May 2023 04:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682917085
