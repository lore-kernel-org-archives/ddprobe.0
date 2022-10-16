Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B689E7F
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:50:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 68E31C433D6
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665942653;
	bh=SGF1A/rUSgQ0CM02cVkK3g9Hg4jwFfDDmxAgyO4yF5E=;
	h=To:Subject:From:Date:From;
	b=goPrq+SZwCEIanP0C1Qwktyh3YKKiuGxi3lpqZKoqz5xrMxqThWfCLKMdTO7VF7IP
	 gSXKhXJvkAFWQkzV/DD1aFgrJ3YXX/yQ8fVIlitXT6jqFP7Mkvgy92ef6lbv6sroPZ
	 8Ev1F/Y4KAeYywjGTUZF3LFt/84syQR/xILF52w9/+zmeHI+5G52u/azdlbI/ovmBp
	 p0e6q/jtMg0EP+cjjrimpTOWzWk6vcWXXjC/k0SrzWIeyGyz0fD2nahUZNbu61HbWs
	 STfZswna0vGOfObLbmpFP7Ijt6/pLjtxfC5T7VMNPccPCvGOzpv0eVkBUy26eJ3ASF
	 /B35VqAHJ3v1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F830C433FE
	for <ddprobe@lists.linux.dev>; Sun, 16 Oct 2022 17:50:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166594265331.18734.15477238191317454556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae556930c0c7117bfb0a1a8bb8b3bf54f4c83aa3f4907ab7ee5227df7a1dd05
Date: Sun, 16 Oct 2022 17:50:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665942653
