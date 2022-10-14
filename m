Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD5C2F3F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64D69C433C1
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665790253;
	bh=IokdLYdSkwSpB61ADZqym07ZQxHg940g+4ZeNsf6mR8=;
	h=To:Subject:From:Date:From;
	b=CiQtShrGq2FIjOMlma0W4/50cYvR2e7dBBAcqU8JlHjpt4utJ7OT8oaZWUGKysZRv
	 C3tbQZN8i2d4sPlWqZAdOjlfZwUEDN3g0M9Iuv5YNQ0bXzqtDkhCEovgWbyeXCyWo3
	 glzNF8p32+/vJ13zr5I7eW9XBsqgBjL1iEVmNUM+rZV/nlk8mc05Q862loVN2PYgVy
	 7x3XF5C+aAfv7ZcWP74CkyOx3dH9CqDchiZpVPdAlJMdp22uOD8nAujh5ZwXtKVZ/j
	 2IEAtDBEGtwVWbN8EupI6EFFfSZkA7cM5Ogsr1Anqm53liyV+IDcVBsvftap4q/IhP
	 zS7hKFi0ZtLCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F0E3C4332F
	for <ddprobe@lists.linux.dev>; Fri, 14 Oct 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166579025331.14170.14590158642579991397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7cce5829ca664b38e021ffe673197c3da41de4e5fb96c30046c24c9358f0984
Date: Fri, 14 Oct 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665790253
