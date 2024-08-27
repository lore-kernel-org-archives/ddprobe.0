Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C72B156C5E
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724745354; cv=none; b=M0szhHI37qp9oKkPAvokM/Xgmxn/yXV7DhM1lBO8c48MjLIs07lBqDLFUcAV3TO2pTffUO2kg/mFrRlcsztzRikOGz29jswVbd2b8rIsYPtblg2Rv+a5nDzzzQSsCCOlkZmqHI5cTq/5SITj9JZnaY4GToQPgcUu9h94R78pRIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724745354; c=relaxed/simple;
	bh=H1YgkXiDEQthmXjsp2WFR0Oa6WY6YVGXWXrmtv4+sl4=;
	h=To:Subject:From:Message-Id:Date; b=ruBySTGn122AO9wgpBf/PowtuNGxqjJXgYCKTHdxkv/O/F+HA+BFSRDQShBYAXEM8fcUe8IM/KcTGO0qaXBUPKFYYq/9dOesr/eSABts120F4NAdnnTbqtE4ld+P1kpYEzXeLV+r39/4D6S+vfKbZNewfiCu7EgSF2nUfWGAPow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCM8N2V0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCM8N2V0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DACC8B7AC
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724745353;
	bh=H1YgkXiDEQthmXjsp2WFR0Oa6WY6YVGXWXrmtv4+sl4=;
	h=To:Subject:From:Date:From;
	b=dCM8N2V0SCNm3FxpQ8nCxSMww/Jh0WINPTp9osKcKZ0NqO+eTAvs7YnYznWJyq/X5
	 yYPO9FHEKs9k6mKWugsmptXSOttuNLzI8rov0OO6ereYcYsm/8CQnr5gdj3flWdwN4
	 gHas4iyswbRjtiRC5b2aMfZLt9CEYhuMzV545dImTS7C0dt3oMMNaB+oI7DRCekn4k
	 M9VRGNfGlNIRDMNJiw/+sHMDmtfnC5eiY3wG2396hY3Smw7XzwoV+0v7yGd0JAD0ck
	 CcABg3bQXCY87aKscvfGeGY4jmytgTAnHmK1Ra6AInPJhDLlpIFueXo4aC5CBHrwad
	 vEVWnjkSq4vZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971D8C52D6F
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172474535360.22118.3467262813176470027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77aed92bfe70067861988eb78adbc3789ea60abbd0e60bdda6428b829be80242
Date: Tue, 27 Aug 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724745353
