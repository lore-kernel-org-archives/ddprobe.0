Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFE9D6FC7
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80561C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672329687;
	bh=MwWVH06A8+Z48Mj0+auzH7zFOhDitv5yYoDqJGwWHBA=;
	h=To:Subject:From:Date:From;
	b=dZn79x6EBm2tAAg8lspc6F+pKeLhQH3LRfCnM1diPz+GR7q79gfUDxCUMoMX35z2R
	 yu5lyPWwZvoh+hHThtYTFwW3skortaoqv55XGPCauiyXzNxXuaPdYxr5Z+BIsCH2w9
	 UNsMjy5VR9zKNOe5IBh8+/dqA4loOP/M5KS7Gv/QT/VqMe18U1un1NtHezAmhVEok9
	 R0FuAcXgfT4zyQOt5+moShE+3lXV57PrnA+nM0p16cWPhhfwBJtc/OjW7EMWpvUE3E
	 X7F1TQKTxG/qSXCUjkTP0St145z83ixIPmh0l3kAb9h7WUDB5D6dMhVwo3S39rhzsT
	 9AgeP+wPm0aZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6164AC4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 16:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167232968739.22090.16350136133458106226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28a8a13743004db3a3d013972c3a975d97d63f0170f22f321cb937ece1fb23fd
Date: Thu, 29 Dec 2022 16:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672329687
