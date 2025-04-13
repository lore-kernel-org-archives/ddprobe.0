Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAFD1A927
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744537794; cv=none; b=EFiiSFI9A31hh4Go+pWqeVdbmBC/NOX+/MVLJjZUjuPcWuAzf+3IxPIj5wBKxFdxlRQtXbIFL/JFcf66S3gJVHKs6U8PWHGZLcxyBQHmclhOucqDtFSXrN3rSc7S+ny5hONHDibk5OgDSaeHcTMqqm5laDHpfxrivnhsYqDjaIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744537794; c=relaxed/simple;
	bh=okAUNusW40JIWOZYkf6Eh8eM7iZwYnehWx58w4QMSqg=;
	h=To:Subject:From:Message-Id:Date; b=q2DoN/efWwvvyhsEneqkN/Xf0xHj0Cug7ia1rG/DoW5HMQS5A/FDjR/DiIz+CIBJAamJT1xAvjYDI/+Z/i/cMFfge1hh0aVafCuwPXbx8RhLbjJ3AQDKMgH2GKrGzixNy/xw/yxUQmTgoXqO0UnbI2qwpHUzZ/vJPBD/7Es5UG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJyiVgKT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJyiVgKT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A2FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744537793;
	bh=okAUNusW40JIWOZYkf6Eh8eM7iZwYnehWx58w4QMSqg=;
	h=To:Subject:From:Date:From;
	b=qJyiVgKTzn4tXZLBNNjxHCm/0YMY05zSE4XkG0Yfj+T9oPjrXK7c0n9ezFBa1mHUA
	 ZxONwv+zmZUvJXGBXq4gqevSDeJQ5Zb8WnXZNeDzr6DHg/jpQo2bzPBO1vAo3gLuEZ
	 V7FX+FLHMVCsz02zYTs34EyffgBuzXqhkmb1jr2ovDabXv4fNHM0zeCyndh5jdjrbX
	 EGtSkNOkzditWUyh9D5zwJcz6tY3XI7QboMMAtp1rm5iJBcLURaFC6tL4DSNPeTSgi
	 pSZ7k3HbbZFLwHdof+yaRjCYwus5ExashpKkaQJKD85TMUgd/u6nKwNQsM2rOo4zfB
	 Tw2dixGRkDreQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BE7AC3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174453779362.6716.6789346074337098346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0720c73df27971c79b953503823def5a9cba1e0e7fb89e26d7817cdd00f7c568
Date: Sun, 13 Apr 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744537793
