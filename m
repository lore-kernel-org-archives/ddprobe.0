Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1C9D368
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 827B9C433C1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663468853;
	bh=TzuGvvsk0aHVKEj51aT1XNZHa0IA/d5PIiLPK/Y1EVY=;
	h=To:Subject:From:Date:From;
	b=mu6DrYxbmLrFj7AN3TAFr2Y930T04c071mJMRBCmx87lb4+8GcEVf7hXuLethMNAA
	 P6diIMR+ijTnjBmMWY2373XRJiccesy54axhTiG4dJKyIE2vd3BNTuK6ju0AdOYI6Z
	 MbPzcOlYaFJ1nbfRNw86x+b2LzX2QpWdFp3KwSkhKjIG5xI9SUAVILDr4ydPejCils
	 q9eOgFKDWRmR/Q5Ewm4FcMQ+4FJPy60/KY2lqy7jzpWn7/SjOQQch+XNiIEPypUmea
	 P9p2oRao9LqSLTHlxxv3oUZ7UnzKB5JnCujcpi63/gOosv/L8cuBr4H+qlN4wAyYvs
	 LZUBv8f2yYtIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A26ECAAA1
	for <ddprobe@lists.linux.dev>; Sun, 18 Sep 2022 02:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166346885333.24164.15178626946504304183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6367a3525e7aea97cb9a29d56ead35177b09626d29a74b01137de5867c41016
Date: Sun, 18 Sep 2022 02:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663468853
