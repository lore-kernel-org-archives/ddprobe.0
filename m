Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407B663D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 19:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEFE4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 19:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679169125;
	bh=66Gwps12CqUSNMxEbrcQs041u/KSOag14GqJ9qyGHeM=;
	h=To:Subject:From:Date:From;
	b=nQKL/ieobPtj0HI9W9x8+nKkn4q4dEGE99jbz9TNdPugTswZQZTIi3+P6MhETOjrL
	 whPD2qI9As8MmuJeTXeQbx8I6EKcJot9/xudYarekNureyEDU7ygXjQ4P6qafvIsLw
	 4O3RSuX9OD+enQEBEgAK8YmyUFidC6V0MqE/agZHZEAbvEPupAdyEkAuXTmWxcdJmx
	 YZ7PuGevJuvaCeobVxbOESFyFoXDmcQwo9XqrXKX34nRgYBU/llm4U/El04h3r2cXh
	 nuDxsLEjInChayzRNWw8H+YozLo1IIPvv2QnnoLO5q1HKVyvocFnmwdv6q33q08HlS
	 gi5nUYPdsIXdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD666C74A5B
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 19:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167916912575.29520.4767755022054899376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a15eac0d08d3d96a1e75f56cded5b632f73e3464138289c56e1db1a9c2cfb6
Date: Sat, 18 Mar 2023 19:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679169125
