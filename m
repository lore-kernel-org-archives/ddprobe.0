Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B37D51FAA
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 693DEC433D6
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664590853;
	bh=2lEXGBJiWyz84PQWzBGvkC3jeb75Rm7I9uVVygMYvlA=;
	h=To:Subject:From:Date:From;
	b=A+hmr5B/FiOq015T2x6J6oZjFOnhx3tMUp3umW+/PMcUCsVn5cMsISfc1AD7IIxH8
	 MDxJGiwr/2eYmNfPaW8yy8yxdlcTBEX3IGynaXfjZ5YRBm8G8BNIz3c3KNgBkqZMQi
	 gJmqFj7LLqbTpOgXCUxx7BVo2+a98omO9LmaHxpL/kFWPA0o8VEKzwF7MLOQL0nIWE
	 1a8OykA/rM8JQj9DcjQDVu9A3+OBFXnAGvRtOwVG7id+1FLV+F2GpJYKEWdi7O75Gx
	 rIkGzaoTs0f73Rh3Zi036bQ6+atlQgQyf3vCcp7mvJScIqcTxo0m40ItiAS/iKY0l7
	 avLEeMxPemOfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50626C433F5
	for <ddprobe@lists.linux.dev>; Sat,  1 Oct 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166459085332.7265.12720318734128667284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9436d8f1ade1fcd11d72e7a8d441a59634529f480eb472f318076e177ac1757
Date: Sat, 01 Oct 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664590853
