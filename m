Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C80EE657
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74184C433D6
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668928254;
	bh=Gm9E28VAHfxa2SZKm9WZKGNakLHmh/fOJ4ZCxVZinnY=;
	h=To:Subject:From:Date:From;
	b=MFRKneNwZg5M7Pc/JT3PABtsSXyFNq8J08BuFXUhHNnVeJEil+gux77dCJMd3Qng/
	 uqKbQzom+4d4AUhSnWbAvkqPSar/5sVwb7HpV9aeFVoNAFGpXU2vcd9NG2zKjTTOYS
	 GasEh9HFnGuCjSccpUsrYxerBC8e6OQoFibfy98+40eqk6V45gKvl9yLoXIP1C5JgQ
	 d5jrnhNy7/JUruQQvuwBJjoh2y7JciTB8pkyOVDk0/vQDBwDBu+8GZhdtbdfirc68Z
	 MHmCI4K7FRTmyxj3fEWpSsCDtT21/4nuq2z1VMZdnkJERhi+dtGvdPO5mzpo1JTL+I
	 MV6zE1wLpSZCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54969C433FE
	for <ddprobe@lists.linux.dev>; Sun, 20 Nov 2022 07:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166892825432.25287.16152440201233726018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95bd67b0a550f73709677ac381bfb5622e69fc1276c81c3d8529f18361995f86
Date: Sun, 20 Nov 2022 07:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668928254
