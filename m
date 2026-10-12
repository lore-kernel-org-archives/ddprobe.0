Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5EB8B6FC5
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791778834; cv=none; b=rea9RVn+yThFRmC8QuQZGndab7L2drxon/eIXswenw4pc/jVEuxW2Fsj0EtTQNsRvpimJjFpTLP6KciiPsKICWRrgcpuFa6+C6ncdkNgaH/LFnAKmVJEQ6eAFx52i/ggVpN6KUt49C7UvMymDn4SRnjwiZhfYtBe93M8th7WfZI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791778834; c=relaxed/simple;
	bh=C6eIw/BIGyL+QsetlAk6tGHrj2n5qUpgp0r/I2RIdSw=;
	h=To:Subject:From:Message-Id:Date; b=GJDX43osnJTh7LVTyUOdUA3mLjx2TofIFJs8M4jhAJYye05lM5Cwi9aehALpp3wifQk0x5rvZ/P7CqUyaZeKO1j6FoAcSScQ/HTowo3BwJSrIs/gB9D+swKH3XXQ+4hwYrOnI58PgJT52Aw7DtQ6kpQbum6E82yUWF8M6ilvQvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMAZQkP5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMAZQkP5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCF3AC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791778833;
	bh=C6eIw/BIGyL+QsetlAk6tGHrj2n5qUpgp0r/I2RIdSw=;
	h=To:Subject:From:Date:From;
	b=cMAZQkP5KxandCLVJYIHPn9yk6JDrXdxu0GmlImWC4SCI0RJoC5SY8ktXtPQEEr41
	 7S3utHNg1Poox9jvKg3mhxvMz5qWyf9j8dtue7h5m1fw76Wu3eDkFrjnSI+JYEdF4O
	 IpQlbNzzyXFn0QGxG9Uoyxxb6HF6u0tHdkdmXsZ0COLwZq2IqFxz1pQmWix8qDm/Qe
	 Y2jusdHTLofrPLnI9883zqPR4FcGaVnA3eSWQ75mrQMw9ZtyWc8qEqtCMYi/BhPGPy
	 Yd1yQI0l3zrWg8ogFR95fbaibdGo3PkJnFiAoUBP+1ZpXBpkYeN7AdiHKx+JoMgOQY
	 k218QnLeLAhJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3DA1CA9ED1
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179177883372.27006.810210898083012934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 322c528bcd659e2cff23472d962afb1874107b834c735a576e330fdb8affed1e
Date: Mon, 12 Oct 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791778833
