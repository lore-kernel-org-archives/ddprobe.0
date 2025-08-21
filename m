Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75120277CBB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755746994; cv=none; b=NZvC0ncq80SIIBDkip7jLUPjuuQ6lBB3GEgUbTB8tqrPrUWEpNswWNtti8zAl81kHkFMfHUP9qTVGcN0JKtymCD6oyBD42kRK6VVjjIc8NLH/iR0MMUOHZu9ds/XfkLqs61E3WwmDmKjk/bDcmuzwUR2RJ5BJmqSdUPT4prqs3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755746994; c=relaxed/simple;
	bh=MNtpkHnnQDt/zqKVxenP7gpDkJR9eWBKpU6PB3t6Mq4=;
	h=To:Subject:From:Message-Id:Date; b=YBqt6nQQazGHQLo8oG7JN2igWwLxr/yVmzXXK4XVnWFafG5LEstixfKCq25pASuvSUq2AzBbdEh17zktfqXvT7NBVjfMX7E3LCrqmOiCjK9jN2o3hzEYY9V5GDk3sBMfVH0AFmBp4JTPURH0aFsVLDbOcnJz/pekLqAeMSPiBbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SoHOwCSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SoHOwCSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B7EC4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755746993;
	bh=MNtpkHnnQDt/zqKVxenP7gpDkJR9eWBKpU6PB3t6Mq4=;
	h=To:Subject:From:Date:From;
	b=SoHOwCSceQF8kog/mz612WRxYMFzADUCcP4yJasYMxiCpXkf8nfjJAlG3KGqzOKZM
	 rT/lgUrAs3K0WbxX8h8xz+894J4nppt1ydRJb/PD5bUegBRfeef2uKwIZy+DeoprSp
	 U84nfRzvA/qc6KUdp14PPAo5oT3PMQPIXa68syeGlzuXAarVcDXqOwAv6WBr3xUsZm
	 +29YJW7WGVKsLlJS6GcP3nxzu0YA/xi6Cyggp3cZzWyBv/dlpmswKVNK1obxeFiT4E
	 UmRSQvYvV01nAVrLrjMT2VTmtaNm6R3kfJeElY7imPvyFrUk91W4BHIUzCqASj+ErP
	 +VKAxOuG1kUVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9186ECA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175574699357.32616.17789653337058976361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24be27b73d8fd88cb99663b11ae827d9518895261e68df110528f80dbaa198b3
Date: Thu, 21 Aug 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755746993
