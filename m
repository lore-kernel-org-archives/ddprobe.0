Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCA5B199FAB
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776300453; cv=none; b=uBl0Lmm+63H++QMZpT0lf5V/7biVToDIcAvXRUznJEpRj0sMSsNDm0ghW1puLuQEofVoGNdiquEkTbZ1K9zX8cSfHx8c0Z7aooiKf6aDS+mND/i3zdZ1BjmHjnIbCmj8jpPhgofTl70HmQlVVawnEjPtrro/g2OTnQBJVcssotQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776300453; c=relaxed/simple;
	bh=kgs0Pq+66YgbUAyp6HUpWUjGTr7ZP/hLuzPz9Qc+QYk=;
	h=To:Subject:From:Message-Id:Date; b=eqfcIOY3p6CIkj8DwceKdfmJ55JJiigODahuENnsm0v9cxwXQ7tla+2cfAXIUIfzt75XBeA67/hx7+ZBqTBruDI8b25NmWGCp1MW1BqdRC5nmLoIUGHoiMMEefqlJvdz9Gd0vW5i95q7Ks+5v2v3fp9WWqcZVfTDZEtEJ7gVyaY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nG4bJP3W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nG4bJP3W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFCF5C19424
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776300453;
	bh=kgs0Pq+66YgbUAyp6HUpWUjGTr7ZP/hLuzPz9Qc+QYk=;
	h=To:Subject:From:Date:From;
	b=nG4bJP3WvGZdisszd8ZNA8yq2HiwSRbyjKx1ptkdhvkOxF5H3NDvzxhuc+6qSC4Xa
	 b6ZpgsFHzIr5EyndHaHDvIgIWfKQ/ZNS7IbrRrnS6AP1TxuwDJ7z7mYMY3WEgEtUP6
	 neyOwFgkxON6yI3UFRrQhfkCesiZURBsWbx34s1dWoLxuRWEn65Igss5n1RQcVlE4t
	 6dOIJ+FUFlLXon5r/OsukNi9yDV1UH90N1qU5Wwv4lVKrg4xgxNJMl7oQ65wEfZg24
	 Rj6JMRXoocQZVqxBO/vDx3gPWNC/Gz4LxuqxRXz4cPEAeiQVW2ikcxLm5Ge83P0cJw
	 Wyccp4dk0FhZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05C7F433D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630045368.31359.17187344804005147607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aab864bd5b15c16efc388655b8719ada445729aaa0486c4edf9ef673116142b
Date: Thu, 16 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776300453
