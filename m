Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D53F342EEAC
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779108633; cv=none; b=gh4yYaKjn3+NNZciu1159BXa3owzVFR16I/Zox75J7LQSAZmJmHiQH2iMfmMVg4uRGmbVKnePY8bn22qx5uC0WwJsXdDffqmYC9szZhJJ2IuJl6rRY33w8Z5fY8zC4R0S9SZXcMbgj3opB/DkD1QOOOSc7mSF1PjHQwhCYJ5lc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779108633; c=relaxed/simple;
	bh=Aqiw7Fx+L/lqraq8Zu9fpeIJlCNghBkxMRIVeOXLc10=;
	h=To:Subject:From:Message-Id:Date; b=Hp8YlZDVr08QVFDW8oMBQVh2VAKDw1zGuP1l76ZF/9ZDDjpipkFvsxup4e5SzBPx24oA9OlH+NuFpyINvi8fCLd86ful1GIaC04l37nsW/qn4KePGofWrsxztEEPsMNcbD78G0DsNXptjn9fbaBhcKZH/9kmIcZ5HViYu//SZA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+OsD/Pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+OsD/Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9D17C2BCC6
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779108633;
	bh=Aqiw7Fx+L/lqraq8Zu9fpeIJlCNghBkxMRIVeOXLc10=;
	h=To:Subject:From:Date:From;
	b=s+OsD/Pmv/hf19BwiVPNBvD1cKTRGW/3uXpMjvfJOQ2vD5EcdeaEgU83YwRwxGNot
	 sPHNx18/B1Wv6TYO/u33Hy0tnArPJG+Huj/H7R8ZgyVisQbmbPWB02Y9hPngHMLh8Z
	 PXYT54QrAXorh15g5arE5KJEzncfIV3UO26nYZVfl2+jj+ondU13zVFPptojVcdkVO
	 k8SxxF5mZ4ZkolsyRaAwBhe0wpaHGkhXBkVH+cIAdAQC+I6KBDagEF5AM4yqqa8ZBL
	 ot8RCXmSitYk5sF6Je6O8mENcs4VI6y1q2LemA+lD1abywh8ULc/saLyG0uZF3/gZV
	 z9QnbuPNi1SZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB04FCD4F3C
	for <ddprobe@lists.linux.dev>; Mon, 18 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177910863369.22520.16944959744008950377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d44f7e83f7744fae27eee7ff3be6af9f063bd47201a6bff83a3fad1f625df9
Date: Mon, 18 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779108633
