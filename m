Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C4C7B
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 23:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67452C433D7
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 23:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664494253;
	bh=9VP2IUEKtAkFKU7j6F2YJsqdJCW5C5ElQGTUjtDjdr0=;
	h=To:Subject:From:Date:From;
	b=Qd7aBsaVjT7wOfsvVns9aZMe9j6DEK41bsg+VmUL28TCnQKLWpK6bxKIDcNd+8H+N
	 5wwGDQEPmoR42Aj8DLVL3oeSBv+n+U9F0GzA1BjLBw13tCH9xm857znlsafEpP6KrC
	 +2wjRwSWmOlDVk4AlLn0IMSigU/ZP4x+hN4ROz6YXAtZuIKTCBJOthkAjJeB6wZSbi
	 TGbT70et1FYiq+4zy+SEv0tMAgIe9d8AK12deIDX5EHkTvF50u6lMIWKchk+eFy3sz
	 9yJrk0NcMaoTzGZIDi6Z0qknZGZhGisOXdbwuhWw/OfVgPmQ8Psgg0LYFgGohCb1tU
	 E5Vz1J1etD0Nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514C1C433FE
	for <ddprobe@lists.linux.dev>; Thu, 29 Sep 2022 23:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166449425332.26205.7367457221012728859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6ffd670191b2000a0f6d07b071877ec830a2db805329a0095185143ad1f74e3
Date: Thu, 29 Sep 2022 23:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664494253
