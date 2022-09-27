Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B59A180C
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64CC9C433C1
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664284253;
	bh=3HL5doDbruPyw2+7qCxgXRzujJTC5hEByHHPp7RYOJ8=;
	h=To:Subject:From:Date:From;
	b=aGfJOEHKfeOHfZPHlPhtWN3l1eqVhI8dbbkoAoobcQGHbXwNDmqXF/PgnMJAKoxZ9
	 aXGQ/5j25hO8isVQTZrtqs99AFCdGC8XvSkE9hrvgp/9dRdJ+n68Bd2FxZl48LNtof
	 UkfxDPHe+qDSGXKC/JkzO70Fr+7yMQuxzwva4X10Lh++HpLJ/6p2Zu6m6aupcMi8XG
	 nKYagvw3308v0D7OHpX1wTpO53k6dTi0jeUtJkK4IKO6Z70XcVKbPGiPrcy5ivXV8Y
	 TiTzKONlQAePw77X30ByEZkEASKo3gzmi1snpTzgH3t2n17SmfYUopLTMaTfi2a3AU
	 8YJacyEMT6ubA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A50C07E9D
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 13:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166428425332.14978.6225326278376140363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fdf37cb34f4728ef37e513a0ccccafa3f04bc1bf5f8ad19f136fa8ab41285b
Date: Tue, 27 Sep 2022 13:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664284253
