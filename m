Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45C1C8465
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:23:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 028ABC433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:23:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680013386;
	bh=V2iUzWJU6AjQWDzj0k7wWXFzOpv/xkRVnkBNvCv6Sv4=;
	h=To:Subject:From:Date:From;
	b=Rsn5UC9Fjp8bQXrhCfAg9RLhaA3mGKk2MvQlop/PouyvcR2USyRXwfarx+mcik4uD
	 NyM/7KfdRs0BEdDsLxcPfXvhOMzJikFO1f9HfklzNDXk7RbGi9KPblLEPYpSF5mLz2
	 d+xm1ZudAM0e6dAx9cPF60Xv/5kstvbafdR6GLAmZniWiU8Q+uJpBhxL7tE2j8VCTc
	 6uLsfvO/QxqqsIKb6skSpWXpADiZj/GkxyprRzUmNssjK3xRgi2D1j+jAcxcP8ryWW
	 uIT4PlNoISmDiXcQPmuwe71fpEQh0cSRvgZqKJY7q+Sqb1ounmEVcAFHhDq7ZVCdWq
	 lJtECAQLD9aIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA25DC76196
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 14:23:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001338587.3090.4682920054889767997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c308c07d4d5471f5c22a83a046e3cbeb94e11e117fd14b7e2387f2aefcfc58e
Date: Tue, 28 Mar 2023 14:23:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680013385
