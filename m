Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBF315B4
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 10:54:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5881C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 10:54:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694256848;
	bh=wch/iib6RZhmZKGdGo0HejOWq0xBi+gkTw1I0EcMepc=;
	h=To:Subject:From:Date:From;
	b=XLaB8cxQibM59VHQYXLOMut2NeBQGNkCM7lc7dj3mRtTzGo9PKCmp0o3uXKnVDQVk
	 p3pJLiKVct35lACg/JGKT3kMqQT2gWwwqVz0WwzP5Jbcakzqntx5SwK+FhY9cXYo1i
	 Y4fy7cgadZc23AJ2D9SmozTjgz4pep7O4jX41jpinYJPaLK8J51coa3TQEm1BdZhfR
	 XE7CkK0aV/gdFPbn55K/MH2G4ByZF4WJ+RW7IconldgM4nbvQPbOpkDuEK3mQx/AS/
	 xfCCxNouaF1OxXnqASCRIpXGAEWsQA7XBVFrxhOfO5hddYQEaofcIUWDqqQByxUqrp
	 EioCraNahri5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7000EEB587
	for <ddprobe@lists.linux.dev>; Sat,  9 Sep 2023 10:54:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169425684873.24575.11023187260648436303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c7a87343eef35c9808d5d7efba75a3e24c8aaace66614ef621a653c7580acee
Date: Sat, 09 Sep 2023 10:54:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694256848
