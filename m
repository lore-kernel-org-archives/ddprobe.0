Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D31F3FB0E
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733314554; cv=none; b=nP67JnH3sUOBV9rBTZGxj49BO5M9WILbK1F3+elt/iZgmchg2K9twE2MDgXr8dM9htIeKlGPzz2xGDBq0u5xT9vaQxn3cv+CF64dgqemfgriup6sP8hqGE9erVurViQJn7/05YyDXhGVCANH1wX6ACmyyfhrV47m0Yotn3C913w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733314554; c=relaxed/simple;
	bh=AvJcPWfkzqnUrQoPVrOwjLEHlDYvmEyHLFEOU5A7FHo=;
	h=To:Subject:From:Message-Id:Date; b=bO7vZG496aVNaNKT6mPZzvFCvIcCJ4fEphlOEoBR9CUvNNmghq9YHCJiObSkT6MPO53GuRl+IwY1oRSAtpxO1Rtl81WgrziAYiaYhCEDtLEupjCp9Al6cH5dBcZJ+flyMSZOJs00JO7+PvNH03O175LJ11SVYCMMLswquk+Rrwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rU6n3Bw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rU6n3Bw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6597C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733314553;
	bh=AvJcPWfkzqnUrQoPVrOwjLEHlDYvmEyHLFEOU5A7FHo=;
	h=To:Subject:From:Date:From;
	b=rU6n3Bw/64Y9Qn2zh/7ow257hI8nXMXhfvhXqwYI3KpOFxd49SD4NYJ1K/Mlzra4s
	 IEDOnm4Q7t/WyHqLSsu26A1AuPYxYVm68GZfysvYCVKHoeomfav/lhwKu3qDKxTLqw
	 ZSY+s7+flutZlN3+V06J/u91Md6Xc1olWE6ZVKymID1yI49FLUu8kPxiz/r3o79+1t
	 9ovHOesDyW30TYJtSDV3rJPqABN1xDWhE4Ky1odLLX+Uzt7GmSZJ6nwd3y2NsRwhgM
	 eag/FfQQf/htlsrruQ1d+yeXD+x4kfcsckmLn70K+4kMSbZRzlqHJmiF0vXYeVtm59
	 SVuyfNzs+e+Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CBEEE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173331455362.23845.5329520626662558580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 592b2d790658441a5f9c8fe76bd218b1272604b326b2c7cbba055d931beebd4f
Date: Wed, 04 Dec 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733314553
