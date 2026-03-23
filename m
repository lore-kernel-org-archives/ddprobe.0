Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B1E1A00F0
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774227294; cv=none; b=gq+jXZtTM78c7MKBrQgtu9t8k6qwhZxnX8H7w8n5Qz/Zwu4fNDx+hPs7bVqqnY/hqHHdiVAg/Qs0m5G4Q5ewr9/tHJfqD/qGwoOsMbPpDKk6VhSywMEjBTOh1Peq3EIsZUhbG4L9XRlSXgJFnQrNtU6SgKHx/d/ZEUBeWyQ5WGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774227294; c=relaxed/simple;
	bh=bw4nqkAXjlZkFC5RwmZ166aQeRBE4bn+TERN+cgwDbw=;
	h=To:Subject:From:Message-Id:Date; b=JVd5syfAMgX0DcepNh8z0FrXMJvzVTwU8x1yd1PB27q2Cf1gKOMIBteYCMlpKeHl6uPdEal/9zOikuWrEIBANY4J3wMezIbDn3cR5umzuaKegiky/J62sBHpbxzmlgr/o6e9JPTFSiDvRchnl4hIbmrP03ZuHb/9wV/tpEPFiXk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EheOYmSA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EheOYmSA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9241C19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774227293;
	bh=bw4nqkAXjlZkFC5RwmZ166aQeRBE4bn+TERN+cgwDbw=;
	h=To:Subject:From:Date:From;
	b=EheOYmSAQuM3T9s/FLrWEEB+wjl00cyU3lXVvxCWV/8PkFYkfqn6Q4w7j6h++C+XH
	 RxuVgp+2Hc/T/Ne22k/5ZNz4s+ajvOCHndqU0DFeY9FVYc5CgvTD2XIRjtB4D2Qpdp
	 XW7utakOurb0iZ4rR1M6xyyPSLZBDg1FyA/EmbLByeAm/oFigQyumdwxGR+BofqiXd
	 dLITRmmjiCXCd5+76d+6V3Gm8QIJrwzQosa5ltOxCwCUcE2UHUN+fYdFe6mKstXcCP
	 wjevVX6spF72D+zvnA5DHw5pXqKodCtjL28BCzGXWSY0SfwrMdjrpNJPO0xlNF2r46
	 fcApB/QIOHfQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D6CD58CB0
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422729358.25028.11385612055520842833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fbda1bca74c31dc3bd5855fad6d7481aa7bbc5bed41270d1cebfaf0deb04ac1
Date: Mon, 23 Mar 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774227293
