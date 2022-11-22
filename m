Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBFC0EA8
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72C3BC433C1
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669089654;
	bh=vYw8hTBfVtIRjHJ9IMCFPzR9lBdfGJ8dy1mC3l6SNDw=;
	h=To:Subject:From:Date:From;
	b=Pt6y81wrePYOB4gVUOVLyQQcPslzvXrjNYoL8kD9az7hHOFoUunUbJQygeTHHZBy9
	 mhYvJV3FtGQfu4MLEdX+d3e1OkySO5b4sP3yaUkNpuNUQ1vblfgnErzES7wTd8nh2L
	 uA8tMS1oOUO+R2U5mckiLjN0xWvZMefoOhX/asO8YXVVV9tfuhqAMdpsmFzY1HSvrv
	 h2vOX/8mKB+irPeNGcbSKkanc1qnMiqe8aFbP49ZEP9xMbr/46qkHBDZToMXnu7ETa
	 iSOZYCsO6DIUWbc9QhzpBl4j27/H0Uw4hu25DjfkIB/1j5mg2H4/o7kYSqNHGV1rOf
	 zcBKk+mr09mtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56812C433FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Nov 2022 04:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166908965433.19819.9551296920581885411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8279d5d6aa7b48fb28a7fe400a46a59cfd5d0f847ed11cee737ba2a0cd6b0df5
Date: Tue, 22 Nov 2022 04:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669089654
