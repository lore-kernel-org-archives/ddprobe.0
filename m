Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B7E9817E1
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 703E4C433D6
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666248653;
	bh=q2pW2c0oUtoltOLi/niUSFwA/ElTYjOOk35uxzuvmGo=;
	h=To:Subject:From:Date:From;
	b=acBsdNgDscLlIlz5kERuquHjd41div2xz450TaavXpRjSve6CJylXvZUcFuAwc3FS
	 gkw/1rVcKTLSVS79gK7azErIDOFXC+v3eFi56uc9F+qR5KxcMCf8oVIhUQDjkEymDY
	 IgxrgiyByoc471tkTm2S0rE18RVcjICjymzNVCF4y4X39NhgTalZ1FZwCDC7/njIsZ
	 aUWlKBjt+BePB/YXzMIAMazgWwu+oQdD1Lvqzg9p7xzqwh5NyrOR3WjZt0CJ8ZBx9/
	 W9xRC+lFCvI3vZL0uUtHr9GuggRhHJqS6kvJDEEL2B+fy5kR7aabCkLj+0UGB00slI
	 B92ACN7kaZGvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54AB6C433FE
	for <ddprobe@lists.linux.dev>; Thu, 20 Oct 2022 06:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166624865333.12410.3617789320551884998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbf3588021b795a3584b9c712ee0e86e36d3c48c83eef62930fb6de685de3ccf
Date: Thu, 20 Oct 2022 06:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666248653
