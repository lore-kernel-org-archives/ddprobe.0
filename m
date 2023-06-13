Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 695F43C25
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 10:56:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC037C433D2
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 10:56:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686653766;
	bh=KT09tS/la/oDfNS+5gSkdZ6FmOP8DeR9FFny1Mvf86g=;
	h=To:Subject:From:Date:From;
	b=UOsNmr+VwhWptmJoN/+F0c6JfJ3Xfl0QAeFe3LXM8DMl4YFbbJAtlEzaK/SXkTMc4
	 K60sR7c2/dNqPIGPfc2cE+14H+89RpkcC682xP4RJSGl7wVD2SDbSFKqvli81gGTgQ
	 SUN59VT+grzvY1yYDA74Bp6776TzaopuTUGmxQcnJP4OjjinSh1Zi5/SoMesn5ytTD
	 9WuWCIL/MgbyWZ+KgZOecuouNeIwEx3/hWdeUw4mhCswUClnqgCy62mblMm0tp9V2K
	 sWEa1KdUblwxrQsr6pPAsevL6dGQXXRkH1xXbAtmQW9V/nAfXvzsk6yRXSAPygrz/Y
	 rKhvLpAjqe42Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE934C7EE2E
	for <ddprobe@lists.linux.dev>; Tue, 13 Jun 2023 10:56:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168665376583.7734.14232197191985624473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a728a80ee595e58569d1106d29d88f581eb50e1b42329fa61a1b8b6ed5feed
Date: Tue, 13 Jun 2023 10:56:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686653765
