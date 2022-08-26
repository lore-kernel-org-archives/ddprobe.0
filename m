Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB2AD4C94
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:50:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D867C433C1
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:50:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661550652;
	bh=AbK3ge5Hq1q3iWWzkTkDDXL8NSZaQ+0pKPraC56ZA4k=;
	h=To:Subject:From:Date:From;
	b=ohHhlw6O0QlLB3Pah1uo/+028PA6fGdJS+zDPuKpd9Y3a6uT1PcriGeYcjp2QYXf1
	 o1M8W31iVQKghaBY01hcQLM1LBfZXVNmds8irfn6rEE2j8uIwWV+fWfoc1XfR25gUt
	 kIK1jDzMwdNpgvIN/+S8+AbbJsCdCd/9/4xZST/OSFNgWOR+S9Nead9P1ZePIAM+/K
	 7iN9plwchbdwuXWz3QSmUXaov9B210iWSHkseTdu6E1UrEzhyMU/rOC72MFTfvis54
	 64U/zSTwlOSU3ctmUrSDyEGdaKcgHXBssRH9vb/BNDmHhQLfGHptkqHrVCFD5XOKra
	 HO9Ih45wGOKgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60232ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 26 Aug 2022 21:50:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166155065238.16252.16396405997509289915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1df192323b861bec0f89a1bff25dfda6b49636f16ce23496b3a62d08ce482754
Date: Fri, 26 Aug 2022 21:50:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661550652
