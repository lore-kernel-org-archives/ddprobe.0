Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FD921D7E41
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774171494; cv=none; b=E3aylyo32KcWMGgb0j3Vm6jckusYsFMu/Eylp5LfQvHqCPD6INJfVY0LybJGgz7gEx2OrNPiN9TdujjAIpA+/l/F3Mk2rrTMdOhJ9+m/JdgEAkEiytwT5OWOJW7oTAFO9WDCdk+WPHCYrFvoCXHG97Bb5d/payTrsznhxl7fBFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774171494; c=relaxed/simple;
	bh=UpRO6qYL1pqgeZYbwyi/w8xh1HEYKE9fpddHVmQNsLg=;
	h=To:Subject:From:Message-Id:Date; b=keucbxInRHg1NwAOcclS3KoJveiYriKcxMAqYFE4KNjI/2O0e9LspDZuMs6xMpxltTQrTP0VEGktT8WlhQDBwF6b3cepsHBfKKKCUxj1IcnaMtCBAmyJpwC8G6tFB/gw2P7n5b3p0vw06Yw+sJB2f5SZi1C0UT9vwQYYC/hAkFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X2Q9tc4r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X2Q9tc4r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB6A8C19424
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774171493;
	bh=UpRO6qYL1pqgeZYbwyi/w8xh1HEYKE9fpddHVmQNsLg=;
	h=To:Subject:From:Date:From;
	b=X2Q9tc4rKZjPVDoY0GNzXibc6BVBblxzRLRAT4U8Z+Y+1OeABhdhdwMt4Qbog5ROd
	 upEaQ3uf4JQyH8raJKET2EuOGKQVvP5pWclHRHtRLckQ5bsaeTaXiONYV14wGqIC9z
	 ggD6ypQhPFq0hLfLr0eQmXFxctLb4hfFI/kR6TTyGYXctGVDbNPK5I4zpWzgywzSpv
	 iDx/749CPZmjKWqpZPgJz2oVY8BUXzD62uWvP/bSPf2B1pgk1OethdOTAop9fgenpe
	 0ncXJKjAwWI0yg2625jRM2thpe8hC3wmpJDDR4nuIxt/6ldWP3kf1b7FMaOg/gxs48
	 tL8K9fxNuf9lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9388EFC72AE
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 09:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177417149358.29418.4156875844596780930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 003b25d24e5bad1844373d4f97e24feeae4476997c6055bfeb7650a45d48fbb2
Date: Sun, 22 Mar 2026 09:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774171493
