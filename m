Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3904310620
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776981454; cv=none; b=pV5LkN/aioQqAHA4dGXo1/Btz5TM8rtdI+BblzAy3QcnoYqfh7/U+hnXvhASBj9L4obz61cqphrKmJiX1J8RZ59A/pakm3Jtlc9tjxFfdg42NoQO0T9jlOOepqcGaMIbtZRN56pi7J4BJgl946A5gvidpG6KRYSO+u79lecMBl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776981454; c=relaxed/simple;
	bh=+kjfTCuGpSMcql6uFsJ6IEF6gi2bRgUbyM3ikqd582w=;
	h=To:Subject:From:Message-Id:Date; b=CTkWRrIuw5gWtj1FuKtN7QuWOIjd/za/IokkmDWumdbrtmGRWUQbEv/qKK3Fon/tD/x+gt7rUxMhZWYwRodO7roI+YbBup3pWlcwD5DRCxq+JBqiHrOWzlUdZEKog6uM5yU09h3lf/mo33m4gpL4UqxEy4CbgdO9ZEfDRiIhuOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUZB4gyU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUZB4gyU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B86F2C2BCB2
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776981453;
	bh=+kjfTCuGpSMcql6uFsJ6IEF6gi2bRgUbyM3ikqd582w=;
	h=To:Subject:From:Date:From;
	b=aUZB4gyUAmbAPqbefuWsuPlSeC3HB8xMUhcpnZ1WOIJZkj0qBImTNelUzCUNhs+JK
	 NdwrPo2hs/Acyc9DaQzKoH5iAJ09sAazGPUAuMhzh6lLyH3AaSgFhnQAn0L5qcn7fi
	 qg1QP1TcKmkjPvvGHUdki1bVVVUs8isySAFZ3fS4QfuVgDZ49/PwYrQ5bjfSI0S2nw
	 Lc5FDr79EMlsv223NjE43OAjp1pD2nSBRmSBOEMa5IT3KYw7JRhh4F7e7jR6iCTuHO
	 Gtcr8f2KbTCQs+cKn+rWZovH37HFHOnSdHRGMJFWrHzmZ6+d7AdEdlaNF9tom0mhI4
	 zmP0tC5FxnPPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9902FDEE51
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177698145368.27053.15958325119251414518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16c5aef5e30ed412b91fdffcf4d1723f16bcd482b07254dc15618c0d45e50ffa
Date: Thu, 23 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776981453
