Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1267015E8F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NKJCxD6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8969BC433C7
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699442896;
	bh=fCypzpe++0YpI7nh/EEtGcBMYvLxA7fRuqJeWNEYNAs=;
	h=To:Subject:From:Date:From;
	b=NKJCxD6Yptmb62eoqscl8WG/s6jK9L7/a9E1aHB0IfrLybIocVJ6um48ElnX921Yh
	 xXmlUT6zse5sbnRpLWACSos9rimK4+NeR9tLNbdEHrJK1Y0pe0b42AMcQwY+yEeqO1
	 rBko1YhqH1hUdrkZWRCBDHXIRkMoaun292by/bRYuhVmtDCh6ediNfRoxsGJBzBjAJ
	 rT+lywOygOX2OZMqKivnDsoD0HdSZ+E+upiJAIfNq06gOT1WUygfwotx62upWbXShV
	 RhopQzoodMNq3hF5l3V7S/Teh+tUMzW7t7der1h+wfcW0s/CLlWxZTo0Te1JkaBNPy
	 9N2ea/tdYwiYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BA2DC4332F
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169944289643.16350.4171544877146190690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8045e839974715e31ca3e52da81a7f44c9bf952887e5f6b9d959c876b9a5db6c
Date: Wed, 08 Nov 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699442896
