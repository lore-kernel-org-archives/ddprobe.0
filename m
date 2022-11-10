Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F35C7138C
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0BADC433D6
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668074454;
	bh=FWUKddjxOl/E0H4JP3S/w3D4OfC94ZfZMTvL/Dvc/KU=;
	h=To:Subject:From:Date:From;
	b=iTMphTxyA/J+W6TJOqF+4XEKbw+KFOU8gr3yRzC51bDf3QsDBZN+hKytV80Q0gmX4
	 QyirYPaNUhZ86syrE9HCgeSYhbiyU7gA+IGj9+Qeqw9DICE/xj+8dVbWYm5dvOTswA
	 iFl3mGtJNdtMJ7OjbcPqbcseDhsJoUOpNTHbmFT89UEZDuAojdpw/Ifpz2ovLPU35/
	 XIci6TvVXouuqoyy0Va2pKbe1T0cK75xUUHekB0ffnpQSRoi4j9PCvn+M5DiAYDIRl
	 tqXHNQdXejOSNeoYTPK5yiWS/fmD7A+D5UlcFCba9kofTpYxtxcaKbzMFzz374jxeE
	 wXIdTRDiqyQdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 88F54C433FE
	for <ddprobe@lists.linux.dev>; Thu, 10 Nov 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166807445453.13795.2807656192543188710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e7066900b8d5ff63da3ee935f79a7072e4b41a9bf98e4ccb337f72839c4d4c0
Date: Thu, 10 Nov 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668074454
