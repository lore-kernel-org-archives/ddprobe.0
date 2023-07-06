Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CC427F
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:57:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB46EC433C7
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:57:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688608628;
	bh=/nY3r8CLaSJ1pcz0/QDwVlersFBS9W9tSbUTPkMkYR0=;
	h=To:Subject:From:Date:From;
	b=lx5MQDN0l9NvWCChzxii8Lv/++NMHVRsyd6O3Ljl/cdDY77R/olCHItUoIFt96hrl
	 G9Ej9hiSNxSXTGx+yR1J1Je9ccxccs5tF7AnsKPH0DX+xgH5GwcSOw6YMXlaWI9duJ
	 rHSnDi/iEWtYVckZgGIxGIGcqnlQKoC0y4uaj7Fl4No7qy+lOwtG+KHKJq02i5OEsU
	 P3jnqQyldGbiMafF5W5Yfp7rVJrhZRnWo7dmQ/uudjWxEgfHxOwquISflTVMaWOvf/
	 gY+EG1waSrlsZ6r0OGDhcqJwzL95axVl06u/OcGaV2WopKnMcMph0GTx4tPL9Tmeuw
	 ueDqSE3xw1x3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2F99EB64DA
	for <ddprobe@lists.linux.dev>; Thu,  6 Jul 2023 01:57:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168860862866.23340.43847207442263417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef24b1f11b6dade1cfce78f1f4c6492d53feeefae0d6523bac4665a42f31c45d
Date: Thu, 06 Jul 2023 01:57:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688608628
