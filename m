Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 729FBD524
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 17:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7961C433C8
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 17:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693934648;
	bh=gtIT6OMgnqCFMmaewXARHyJljmUlNEXyGl3pAix7ik8=;
	h=To:Subject:From:Date:From;
	b=m0yfrxF2vg7kp/q8u5/22IXQRNMSV+48vDkdXFEB8mw4AnRwkDj2yqN/SsXb6WPyp
	 a32qxfDP3KbBHHOeA68pQHCs9aTxVvmWY2RFZRJ/xmPl4AXE+JpkyKhYWt8zcLHdY9
	 uYFXbf+V48SX+1H9XY3Y1pqhCvfSgCJGikd/JYFMQu4C002JO2Avag8PkEjxC8DdqT
	 7pIkSa9nyCxgzYOrl7W5n2jeFVhmclT8ctX+VYmimpLhnKZ0uUrVjSTn4+UfitS7QO
	 ZWMzY/RkXUmAFR8Wcox/zdSVcy4LQvJPUNXZAltO+BY1rVxnoQBg8GUJPIN+XCD8nA
	 twlb5A7jgwXYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC3ACA0FE2
	for <ddprobe@lists.linux.dev>; Tue,  5 Sep 2023 17:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169393464867.4546.16553882763793916342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b4d443ac1d902b15c705544073f4425e7f04eb982df9add07da569c6a9a5962
Date: Tue, 05 Sep 2023 17:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693934648
