Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE3E362
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 02:40:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 88F2DC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 02:40:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668048054;
	bh=hiJ9fuvbEPVoePBUjAPEN3x5qNK8K8PfryIHHNz4Fx8=;
	h=To:Subject:From:Date:From;
	b=fiB+d+eqXiXV38p8ooWI0FYTP8s07IameSWRRW754kAvLplMiDPJK3jARB9OoAoTi
	 Y9URLRJ0LNL6sAKFPKRG+9gQ+Fk69CkfUjRL0CMJc6L34Z4t86k0tgCtEMTlpzY+FR
	 9dd92fr5K44h5GzY2sw1FXLSNIAfAEds/+47C4cX8VP0fd+tiCp6FW8YHlbDHAv382
	 3DDIRKQXQuZK6NoYLFyM5ILni7KhSt+yQBH65DlruH9P0M65b40qAMyqqfhgDmtlBH
	 tLhxBf3In4kYvEqQERbDXA2+driSlWWKg79178Xz0XAHokdU9wQiTwfFEnF1AMqxOL
	 NHx9ncafEQpSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6F260C4332F
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 02:40:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166804805444.7311.16314945262602656658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 443ee8e2559865ad0e8a5265e8dda0d09e338cb52882c94961a0460b74f784c3
Date: Thu, 10 Nov 2022 02:40:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668048054
