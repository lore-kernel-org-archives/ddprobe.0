Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239D727A465
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755580794; cv=none; b=PhIZNTKqbgsYEsX887JBHRsSASo2fZ9UIwoZn9uNds+heEW7NImyPhjnMdT2wcvsxBl8fK2FTqwavSBqCDQ6Pb0qJxaIBbCff+jLsMsjW/Gr6ZUZ0ZeiKjmfPegMEn8t9rXlfzYY9Nm+xjoZ0D+NyfnWt/GCeP8f0hYf5Wbt93g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755580794; c=relaxed/simple;
	bh=lgKATKdo1/nUh0U4++pPlw47nuiYdE1uk7Wq9Q+ZdvE=;
	h=To:Subject:From:Message-Id:Date; b=uaZSwPxtj8h2ozNQHYxnK4SoKf55Ay5ZAQJkx7uYWcnMCskzU4sVL0yyutM6GfvlbcdSBZCFGYEu8Gmh6q6g5258NM8Qn8LkEK2ywetft04jOy/A7ha5UlvBpgYS2v20kITX0u8f6m7sSWu5epNrUC2SR9mfwXt7eYRc4DEVe6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K/mZNMlr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K/mZNMlr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7E58C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755580793;
	bh=lgKATKdo1/nUh0U4++pPlw47nuiYdE1uk7Wq9Q+ZdvE=;
	h=To:Subject:From:Date:From;
	b=K/mZNMlr4lCgV+yPiUvCAP/1+2ZHK5j4trTiPVoAuuatXA9n4VV+2TsvDL2oWEJlr
	 rqxoKOMERYxMdBMv2SJWFzd+188Nc28Iy7TYeG88GkI73CEY6jnpLKxYu2gd0cynVr
	 at5JBdyD8ithIakGdKOa8dcOqOHlICWBYTxTdvRyVMFBT08IwmvNT8KFsafR0aSWzi
	 DGwPk5mxbzWuIXmzj1HhptZOTDoBU2VYWR4+hC2/eGY8v1BpCrzQU1R557kqr7/DlA
	 58g8btT+s5dkVjPaDbDhrsOCgtUoO/iYYL3XzwuctPdTs54ewlXr8O/L8tggn1e49D
	 VzyQ/sPVHaA0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D8ECA0EE6
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175558079357.3347.12587354325771497974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98919d68cb7514dd2fca8c509a4616551f41f84da327deb6fa23497faaf1eafd
Date: Tue, 19 Aug 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755580793
