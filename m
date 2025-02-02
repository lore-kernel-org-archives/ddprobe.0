Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454091A270
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738478154; cv=none; b=YOFXuvN5I5aM5MJGvjKKwFQFsYy7RzKOgaKlYNmR3oB5pvWzEOpcYcXQtlgdqf3iY4tIAmQ9BVX5tOEkRpoKDaJ8mS/0gOFC/H2ZnOR2MrAk3W7/84bg1d/RV+fQALpcDUsJF5GXSgpksd5VOjNktelF1Ft1Dl/TPZh1Vml0NH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738478154; c=relaxed/simple;
	bh=lONZdVm25wkEbX3DbGDo+K/Rp0yjH6vlS3SszYendH4=;
	h=To:Subject:From:Message-Id:Date; b=pmaDxGaIHG3qdGzXpLOijTBVAfPQqBE3pDh1gcl5GKg70S+ZdQudTFe3T2rmDnM6g6thzrjHRE3jdskb0vViOVD+AgDEtZMCHHq4eeaKM/I/dIh++Ux47CJw9x7y8qpYs0s1Ixl8BRsaAmPF0nXfpHg7KrncAXeu33aRsRr6VsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XeD+faVC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XeD+faVC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEA36C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738478153;
	bh=lONZdVm25wkEbX3DbGDo+K/Rp0yjH6vlS3SszYendH4=;
	h=To:Subject:From:Date:From;
	b=XeD+faVClNfx/B08ZmlFb3KD2JXZABiAeyhbMFYxDPNlgC0fhitamU5ghxUdpV57A
	 p0IFbrWDELG6ovmpw0lrJNv4oHdUHXX6zsOJhCKSzTj8yLJvNEJZ5Db+zH+RUhfHm9
	 2oowe5vbtepAF0uvGuqVpdrE2Y+t/bANkMhuNvJ0ZW0sVSAe7sybIN/oVKxLEqJ5D4
	 T/PgqHyzOgs0Sru7NjVe0FgDvoXoNdxzCtw83O8AV0c+lgwck//xC/t5cA12jt+b5L
	 fwO8b6CEITIfeUmjFyI6iqbI8SbwKgmU/xqvoQzWawnxW5Fz0wheCv6N4eIgv8j0qy
	 MAka40X2HYzEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AD12C02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173847815360.17054.5035001378990317711.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfd29fe27241359c29dd0be887ac610e0264872b81c8d4daf5c886250ef6c006
Date: Sun, 02 Feb 2025 06:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738478153
