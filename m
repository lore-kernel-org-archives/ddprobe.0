Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1387812B7F
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rLn3dTRL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB57C433C7
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1698053896;
	bh=0V+VRaHXqejz+Kz/4Y5LSQbnVGnAx4aA3M4DoUiRlNc=;
	h=To:Subject:From:Date:From;
	b=rLn3dTRL0HrF3JwXtryOcaYTqDAY9UuHQMmQcm39gDCOi8jVAdEBRK4y0xJdZYxHc
	 C7cVW2tFHdo2yHuosbGXCZZzxXT8hE+AToZwNl8JHKd1CEKU7R4p0If9xjhwTDTAKe
	 Qp58edEQZVDDppSUs7Cl7hfNjypWZz6NMW71VV6Som6YT+4ZfPeECpC3MrAAYJogIO
	 N9Isow0zfzcDBYFSlHCxiHZO9cM895Wu7FjcXlmURNFw9/2agwbCCnY1xC4zv5fLxT
	 ZO1ejxof+3dx3/txJXz50St+gIKVRYkgmGI/MWxzK1c0yEMLrCGnsp4hJ1S61RRwJa
	 2M2XpzOw15JCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62A7BC001E0
	for <ddprobe@lists.linux.dev>; Mon, 23 Oct 2023 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169805389639.7862.5593057954496136167.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13cf90bd347660bc019f38398af1202765968c43e212f31298ee09063983f358
Date: Mon, 23 Oct 2023 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1698053896
