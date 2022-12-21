Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C98C91FA7
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79620C433EF
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671605487;
	bh=6htoxfZin/eG4JtAbwGD7oSd0ASQxCDRsFcpp6nX6D4=;
	h=To:Subject:From:Date:From;
	b=cis5B9QGAHTtQbz34Ug7fUtC+hy4KnPmu8Mc3uOwkFxV/MSQy1aFwJtcLPF/E+4m+
	 O1NOAsH4MYXbo1ISpQ/ezq673QVg9j6Ppm9o34B840SS5ie7HMyb3PRX0m4jqfoO3i
	 op5vkVeECey1uI7SRTInBKfjbmg8Hj4+LuqDx7Fixc7E6LGh4x5w8z790j/HVxgnFj
	 8lyObUwxvVZ1C4bZWwCTyWuIAUCPEMNIgGrONXsk0917TVPHHVYMQuOm4VRsdEo2j8
	 Fz8bwiLkpvt2v6OFAx7xYCs7l6+b8TsgqlsZBT4qgSnWhnfUlPGeo6VUR8zp54uSs0
	 nq7skYZQzyVWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61A81C4332F
	for <ddprobe@lists.linux.dev>; Wed, 21 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167160548738.3158.9557240384690558573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ef574abf56af2c6b9c66d071c43560c33175d7319bb1f87ebec80280e32f340
Date: Wed, 21 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671605487
