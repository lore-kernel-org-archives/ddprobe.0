Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F976A29
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 05:10:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05051C433D2
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 05:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684645806;
	bh=pBT9V6/TCrgAPo2+ySbNe4nzdHyuFE4dbA7mKPUDPxY=;
	h=To:Subject:From:Date:From;
	b=kQj+a9fvV48ZRkJG6G3b2pb9K9yj6sq1Dv/5aGvUc+TKSrZGguvSCxCVOvh004l1u
	 sfXGDEoefHAkWfFdUOjRydG9aLaXp3vms70/fiYvXgdvqMAsEO2Fnb+4RHvGoFBH/X
	 2fjfs3Brqfs8WaoNloAVOTqLh8bxBEURYO9GeqQySbYK8cMWC0jqm7WVVV0ajldOq5
	 mZjckCdMrP7vSv5o3KwxrI0WMt0ze63LanzqMrHgDCyq36/eKuANq9kR+o/i21coMg
	 aefQT1A9MRtoeRTM60gW8yN4EZ6jWeZkP2mXQjy6bXH7kgu0Q7D1UzIHEEMUAeFIW6
	 sSipVLi1qKmJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB99BC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 21 May 2023 05:10:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168464580585.30054.6030496627671039473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73338c748c2a7c4d294179cbe687a7a90b483fb846662e0f8f08a5c7af29d0a3
Date: Sun, 21 May 2023 05:10:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684645805
