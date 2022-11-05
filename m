Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C406C7C
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7CBA9C433D6
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667651454;
	bh=mKKgugDAxZu3ZO6hdCs4JTelp0S8I2mF+WFwIzy4xiw=;
	h=To:Subject:From:Date:From;
	b=CbAdACrvIm/UhyDgeB7q1cbz2jd3nBI038SSitYdGlXSvHyT3ImA6cpYoMtOCrH0B
	 eW5dwOSOZ14ogciOlI33koVq2MfB6tUniQemLIp7F+Zk066zzaawdBuc/eb4mMAacJ
	 EtxLVhrK2t1IwUZV+RsFHplqtfDqe+/qeFp0S2a2zvb5LsgLsOxgax5FlL/neekcZv
	 cN9UqlCAjteYZ26qQxf+B4JH71OkQb0GlZ9nAJCgucKUC4Xdd1QkYqBOMxa3y4pDHw
	 p5ahjpn8EH3vDkPetPpgwbX0cxtXwcUjae6g8g7G90HrgY7qIZXL1RH5eyRBhISUj+
	 Kb0y8mn2TL+Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C8A3C4332F
	for <ddprobe@lists.linux.dev>; Sat,  5 Nov 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166765145437.30464.7541776476379670826.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab4de8d83fc6b7adb2abd359ec5f4bc403ec244b465e470efb3702e020fb11ad
Date: Sat, 05 Nov 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667651454
