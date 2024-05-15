Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 656DE79C2
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 01:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715734943; cv=none; b=a5xm3yWm14lOuu0xjtdzFjZ+bmK4iNSijqOPx0g0AP/jsVdjfkq1kZQDSrfyFAF+cKm+6L0GTTj6GA+m/usLP3/D6qLaN4YjSZdJM2Hki8x/qMVHF8q1Vgb6hH4XJwlQ6tn9g5rKmp5T7I/IS0US2MFINiSfX66ckqotoQroMYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715734943; c=relaxed/simple;
	bh=DJF+e2CakRN0prIIzWEJvEeodwTCuV5NIfZ9XkWW2OU=;
	h=To:Subject:From:Message-Id:Date; b=iYA/Ci5GuuKFRHlM3hPIykiFFzmpdoEKV9H81Nei5IYDNs5RxlBrbyYmb9ZxoKl48bMlU64iQxo9aUCEc24AHcITvsQNRiDIwEy6zQvFh/FCNJQh6oCXlXsfOofYsUF+4xQbLNtLRc3HvDoO1J+X8FQ/BhbosJP1YhJ9Mkedisw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0flQJR0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0flQJR0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE42FC32781
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 01:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715734942;
	bh=DJF+e2CakRN0prIIzWEJvEeodwTCuV5NIfZ9XkWW2OU=;
	h=To:Subject:From:Date:From;
	b=u0flQJR08FbgDh4uMlFVTw/24jmIO5fV0yqPjaED+dHO9AjD4IgewWhBmZdrBeNLj
	 GvE1QVtYYyGyO+3xLuPdol8YiXWxCHCTBjMHPfTRkSXwml+sm+3KFWIoEXJEQa/bV3
	 DXJMhnUzhUV9t6sr52ik4DCMI5Pow8Nt/T994314F/P6N+Nm8S8uXLzmjPzfvXtMqE
	 LG9v+mqxXChdEqRU+Bz7HDJoGC0rhhx0Nqd2BqxU9nkCYkuzvZxc/SISDXPYzmRQB/
	 D9iDFaopt3O6fzKKvbkKXR+aLFnz/mO2shVRrzrUvZQPGEj4W4z5o/qtnrmEhxyJQ0
	 OILSz4431GInQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAE19C04FFE
	for <ddprobe@lists.linux.dev>; Wed, 15 May 2024 01:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573494282.30984.8792709277215848774.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 107c91e700547d75ef461489f42b074639b087a794e93c66e57682d7cca7c440
Date: Wed, 15 May 2024 01:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715734942
