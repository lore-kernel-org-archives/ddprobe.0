Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11B16258CD7
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778258254; cv=none; b=NiIED001uTIJzKboNSy39fJFlfpV3K67gsL8Hi0jRXUD221VVugzj78t10UUhrS/Hds8/ZXAvoQa3m9p/clJMxf8koZ2imaff9iJszDWGHoqMqmxTaVyqWr5mMY2nv4awC481WwvUJESunzSZUBukGpQq0XzjjvKiNc9fPFg2XQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778258254; c=relaxed/simple;
	bh=bltC6cfuSqxHePxnUVb6fyrrd+FnDanJFGk2Ah0Vv0Q=;
	h=To:Subject:From:Message-Id:Date; b=TQ9o+7+rHRtYjOvN8F0d2hsZ00miIkQ2jIG5OA8uFVZjrABgGcnUhpybLZ6qDo6k8tkNcvPkZu/OC/N42Q77B2eGxc4M4em8W2Hnp/XFLLDsWcUy6npjO66cQD19Uq0WisLeMIqiD9GpNfxR7pw3pv7zwRioMDCoDhTC7Eh1dxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNHQA/tr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNHQA/tr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1EFFC2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778258253;
	bh=bltC6cfuSqxHePxnUVb6fyrrd+FnDanJFGk2Ah0Vv0Q=;
	h=To:Subject:From:Date:From;
	b=sNHQA/tr0cm9X+A2TMxUAwUMkKl9k7h+2JBKuImTL4Pg3ZkTP9FDFuiquT+9tfO+G
	 tac0xK2R3FqHfHqPVcIi7gzDqCUbq4qbcHQPjyU7Qocc2xVwZLlSU/rtBO4M6JnO5t
	 ewDXiMfM3bwlrc+MRn6gDuW0K4KkWnCDgDxK0ZrTunTym617Dg9Ak2aZvn89I5mWE3
	 DKEMm8EQwt8BvSnMZosfgpAaKtI9NioijY5R6Oz1MM2hH28NKB/vVm43tKswMor3jq
	 02Cw9+zoCEEHSQOj+2Gaqc3jplnmHONsvibQ3EMfXqJQtlNkJ9KkfOJ+LVjQ5OcDwI
	 fC9j8AJGdV2Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1EBCD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 16:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177825825369.30876.8348983315568773232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d907bfdfa00e5effc2267aa0d32ad8e1cb4de659c1a63169aa1697370eea6bb4
Date: Fri, 08 May 2026 16:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778258253
