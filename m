Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E037C8BEE
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81985C433F0
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671227487;
	bh=LNgJFAY/wYXV8vP64JBDTjZkzdz3BPz3i6XWP96LKyw=;
	h=To:Subject:From:Date:From;
	b=capqgCw3MKJJuqJ+ijCRoxrvv6vmp2PIlQTpuFLVN0EfgeRmiDx+aPOx4+vldYMFq
	 bUbrjN8j+a5GgdG8cR8+uMLNliyHnUwmvpQ2ZNqyhdg55K4uueE4Y/1gpFrcEcl1mj
	 NGVpKGlCCDNHOx93DANiyfBD+E76fkI9GIwmc+sMYYFIxN5ZwlWk4XNjHViCQ1pYrd
	 AkBgfgxGspylgWblDSdsgZHLVthCaIAqr+NC2KtndKjEXLHkCNKXbcb45f4JXPkwIa
	 4VXXv3NehpkvU8IY3J7Yl57Fb1V9DtShIhHorwtw/hINpctIoeP+BNicAaCEavOrHC
	 ovf2qa5cuZAYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62EC5C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 21:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167122748738.14568.14169206310599796496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c40693d3b36d836276acaa5cd9213a5e81c61594904f845351d58d0fa77c639
Date: Fri, 16 Dec 2022 21:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671227487
