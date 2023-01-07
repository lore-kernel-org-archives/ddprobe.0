Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD08210E5
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86654C433D2
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673055687;
	bh=3AewTfAyAHM6rx7gJSQXq3FHpzkMLW1L0Gyk+suGvWs=;
	h=To:Subject:From:Date:From;
	b=u8nJROhCOzSvS+NM0FHq1/bhfZPA/J5PQbFkxL1RKSaHBGrQG/TWewsmjpcXSUZ0v
	 GYc/DpPcO2D/II3s7v61Aqg8YvskD7Uqpg+YqDRY2sZh0ShFO5Gw9tlj/UHefFh5Cy
	 Wi5kA28UVzKhLwgQInmxpZ66ygT1/vEpMJArXD66V8yzEgALUBNbnJXR6HCGEjMyN4
	 s27X1qhSYx1EPem9fgs8waoc60mycuZ1FyRFz5a/SmjAoaSsovdjB3v2hS3R3wr5cs
	 5bw9NRI09ALjMHb+oTvaQ6fOnhHOZWqg3AgaGPahvqUoEvIFu79IHE6Zm8nEbsj/zZ
	 rHhtH8bfrmezQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AB9FC5479D
	for <ddprobe@lists.linux.dev>; Sat,  7 Jan 2023 01:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167305568742.2727.15668546847118221121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d30bc8cf4827f0192a20b7b515e5de8242bfd0ce843c6382e89b5dbd25e71f8
Date: Sat, 07 Jan 2023 01:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673055687
