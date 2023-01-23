Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 299847E6
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:22:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7ADC4339B
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:22:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674447725;
	bh=4fXJ/xHtzzpSesUIr7SXi+v9AeosI/JEMlwxkdXzeWA=;
	h=To:Subject:From:Date:From;
	b=MDTkC00ts2eAwT90uFvdQ+NTKnYNs5+rlRGoLaSzGIsKut/r+GDFVEO0QrQ9HxGed
	 muYq5dd93Ggn4HUUNSHFmecZRX9PXS7AbpEx8ZTNMgjwlH7/f+IVP9KSfqJ0uc+onX
	 pgf9c9bVI2SLARxXMhaQhl0h4ccJE253vOj024w3p2HsliS5EvWCqJ01xNAJSMrRjQ
	 wog47fvkcCzVtFCVjnm+tE5ZjBIkdOeyrQn/NKrSJCDPFiLy6zTMt2rebTErAWIMhh
	 5ajxmADpRCLTQN+Hm54miEBqSEZaG7C8BlJNz/xjmJj2MWEw6/Z+0sWK/1KZg8NFE5
	 khhS7mpOGQ0Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4B17C54E94
	for <ddprobe@lists.linux.dev>; Mon, 23 Jan 2023 04:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167444772573.13365.17511861101371796925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5383b58cd39d4376348472a4561d656671e139edfa0609a364719eff751207a8
Date: Mon, 23 Jan 2023 04:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674447725
