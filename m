Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27D0D7C
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EFEC433EF
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684502885;
	bh=vr0zCEX3CzHoDzmPnNKsoaQsPWUcXMpTJGsm+ZrdJU4=;
	h=To:Subject:From:Date:From;
	b=WwF8T1VnQpEPACmLCas3BAwVS1FZyQHF+FBTu3j4uIEZhoyl9d8euvC0G8cmcLW59
	 ZmhN5F2vVHzkwylaSbrECZmSt/a4oYTDNUzQiUoASa9+231LYJx0D7l9OxoEvtbZB9
	 wxG1AACV3fb/gjE9m82OuqbbzZLK3GyyE8/FpBtJ6rODvMKg2z+wtVT+B23CKBMrus
	 43MrVkNFT9NAOHcr7YO3cwp3EV0dseJ2/9X/0PwIlfz6YKYo+X8KUqEWJnz1eTpnZJ
	 W50eYynR0B2MzanUBGtuvv8U25z42JM+YuIozBl1NoNy0N8cDhTZWCFR2GrMzH9Koz
	 ygkhv4nevLgdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9C8EC77B7A
	for <ddprobe@lists.linux.dev>; Fri, 19 May 2023 13:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168450288575.15671.9725545155152770496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddd031484acaadd84ea543b7bc4291759dae3a7b6808471b30782cc6126895c0
Date: Fri, 19 May 2023 13:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684502885
