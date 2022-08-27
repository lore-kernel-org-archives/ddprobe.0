Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D880A15A0
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:00:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76619C433D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:00:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661576452;
	bh=E1FEKyqVp2JC5GYDahW0bbF/0x6Bh1E0AZWyjsMrEa0=;
	h=To:Subject:From:Date:From;
	b=FrHh6ACYBXgqKza6sBtOxrpRV5Dc72F/2AwZBTS5MpdRbWa1ZXWHVe2PyS4//pzDw
	 q/XGB62WVskcZyqxmJ60iQ0KyWuhff2EkXFEdv278nMdSGYtW4HAHzF/BuhW3peSAz
	 /IMdAFr2PxugU1bKUBc79O+chtOIgrgsxUxam+SkfWo1niv1cxvhGtI2FMU4gFWy5u
	 d3b3sY/8j8gzQX5/rroQlyv5KxYaHmEfRRH9fKPleNzPraBchbYfsp4LQ3SuNUPoTy
	 Wwh3/ekkwmw4HXzJ2/QiM4IWaE1IebjuvhMC3rj1zY3+HwsCaTUNQEuwFr5/NZDMrb
	 efFYD5m/uWomw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A209ECAAD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 05:00:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166157645234.15894.16919394589384529997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eacfb8bcfaa5dfea242692027f610fc1bc11f38039384f5c0152bfe91411f381
Date: Sat, 27 Aug 2022 05:00:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661576452
