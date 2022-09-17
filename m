Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAE3F39B
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 712B2C433D7
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663440053;
	bh=+KjKoSVjeqZ89ByoW2Gdjz1tjSFMPQjg8SMJolSGjbc=;
	h=To:Subject:From:Date:From;
	b=HMOci8zD1Pyk8xn8GT0G1p23CmAcpUrlA68Vtm0dAsv1mgtkcvB74RHJnzqa4Gi9e
	 PeqmgTZGutT2YtKUoSM8x5i6IkiX9tha6Lhgk+92sYLVf7+E1e33nWMn1QWTo+Sicf
	 gffPxPQKW9avEY4Se+mLejbhRjwI2HIv6WfAdkJsxnaylFvDueEimpHYurpDstcWzz
	 TYxnKdPdi1TOq9OIBFNeTBo5BXBhmHbusWO94r3CFBv9HdRSdLCMXQAzPkJ0P13dM+
	 +ILNKSHDv+4U0Lu36tshDDkQ2IMXd8xLjhoUs8NCxXxUWpPSZbaAtAYfns0JrvnmYf
	 4sD6qW4rY7ddA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 522A2C6FA82
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 18:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166344005332.12841.3199748627108685306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 436095b7163f804ff0cf0963351d989cec85b6ac28fa39bc9c1442dd555f8dd2
Date: Sat, 17 Sep 2022 18:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663440053
