Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4612F259A
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:45:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7274C433EF
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:45:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1685054705;
	bh=Pbyxs34dFxAJWy04uiyAJ+xMzq5auqgu2FNC739o4U4=;
	h=To:Subject:From:Date:From;
	b=g1fuNjtVgq+7sQaS8yOw8w2UEAp4E65R3irqCNMskuf1dpinoJU1s5ST1sxF3M1Dr
	 I0GLbijPxv7PIcoEmdVbKkWbxqmZ/FyUucfjayxcAJjT/aiOjop/4wOYYvK7xZWGqL
	 YPP+UR17RJiGswzBS3i+fr7xg5Wpjm+iSzyjvcaoTMJ0MZ0iNS2AmSIOybE5uiWA55
	 bIEYjQWf9Pe7boB3GUDUUaXCXJttg43MBWwheZQ7IcFEwQH6dLZbiZzBH8NReXMoug
	 YNPDlvatTwc+0D6NvLzUYDC3EL/fcCgLVQy0ORcy3YuEHoEgKRNJf1xuCvyLD9iWv5
	 GIOTII+6LRCPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD081C77B7E
	for <ddprobe@lists.linux.dev>; Thu, 25 May 2023 22:45:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168505470575.13447.6471981083902855694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 308221bfd4c4ce40e3719ee29d132782cbb42056475e49711f8e4b721794657a
Date: Thu, 25 May 2023 22:45:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1685054705
