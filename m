Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF06523AE
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7934FC433D2
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671745887;
	bh=kftxHebJGWjEDQpmjBchbkvx27l7cT8pzLg9PDiG0Ek=;
	h=To:Subject:From:Date:From;
	b=ZmPECACDmzzbxJ0Y7tdYKBds+suORbu6RCE/Z/7T2l6E6WaMh20qKAlVL7y1grAZR
	 +smN/y5wfoa4yScg4yiPyXdhQEztcDZDEQZ/y5yJgkwHeS4JMj/+WTAfi/2N5MCfgm
	 X0AZmfGvLXPVd0oVwJ460HWCsSjA+/jNeIAppL5BVeFDwXKFPOJbXxs0pGGUOvvrES
	 OM/bRtpZtneCdMIfncU5n11MOAe5Ch0cercQp/jZy1PcLP7VCljf/2W5j0ZTq/q3ff
	 QfA4/frWuHBvvf3USe04XAQ1UCNiJSGx7wB3xSZh/Q+KXJ8VLMm5iF8yOBuySP/cMj
	 1rxeT0HmLJhaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E6CAC4332F
	for <ddprobe@lists.linux.dev>; Thu, 22 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167174588738.32563.3350483035025272481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 716accac3cb81f38ebd3b62cd047aaf1e9548ad6ca9f45eb68f9ee3fcc3e0457
Date: Thu, 22 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671745887
