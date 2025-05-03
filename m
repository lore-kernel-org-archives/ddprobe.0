Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44233182
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746253194; cv=none; b=VbkT04PsA5J0dqIdRYxRkvPXOa4+oOD02npyoqdw0r58iAppOMnuKZ7XkX1vxzKtTHvX3jYRj5KNoQ4DfRX9kzXVgqqsp1UNO3KnJGk3ESrk9FugdjHeBGh+y/uUrmSxN+gib1879tjZDHPneLxkqxC0O5CqxPSAuaPegsgyIYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746253194; c=relaxed/simple;
	bh=qv5aE5u/y+Gh5OrXzl8K2JGKkga9CnS/4IJTOLRVzpk=;
	h=To:Subject:From:Message-Id:Date; b=gLebQ2tfVYlcll6C3R9u9EApL/FUTgv09/jMsfSxrVtrEEdGLoJQVSMfafOiKQr5cSBOhc+TtRmr7hl+D+hSzJb46Mjiyu+auB7z0JGPnnkK4Df8tB4VJAAOj2LZz0gexP1Lwq0Ewl103I8O301plkMl+62/bN/ubh/kkS9zWZ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WyxER4tE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WyxER4tE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF1C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746253193;
	bh=qv5aE5u/y+Gh5OrXzl8K2JGKkga9CnS/4IJTOLRVzpk=;
	h=To:Subject:From:Date:From;
	b=WyxER4tEu1ziPsE5pwMo/Pl4emgqkIJ+MkSVh1QSONz3xaXfO1wbxnXB8vWcdkept
	 +a0co7Kl9zMnGW47JeqNrsZ6UslLHakH6SubojEGFy/1vBCzbyQuQkJ+Mv7J8/W1Ow
	 Ykj59BIGwrpH6leeR2nq9X+e32DUXl99qYOJ4D245XGexMhxeHWaR3NFlJeMqPTSNC
	 RJlIrsFCPgU6dVI1QuyEM9zlroqEBQbGvxkBr1YJKr4t7WKd10AQtg5p4QnunZ5hea
	 WU36itAQQSrSJS9eKnz4ddd1q8XCcXbKwNUG5OtU8wYkOBhNAN/YtUgVgALwSSDKJe
	 A6Xd/hfKxk1dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 931A4C369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174625319357.22361.4034790325178794031.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 257ff77dec16538902e97a664d4c91870aae40906989541215e2063457b65c30
Date: Sat, 03 May 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746253193
