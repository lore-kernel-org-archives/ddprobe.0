Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 057C92FFDEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774707294; cv=none; b=uRBarSH2PAY1vjOh4lYHjGllk2ms6STgxNdvZ8GMX8mNwfWARXww2PrVek/SiNkAyQTG3jQ3MQv19no9RLi/v67njbRio874qfrncZdVmvvRivmrrY3vXpd1XRRogkRxG6mbkthIX3PfC5Nk8EXVpFBe9XtjAbhGXV1Nv3msY8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774707294; c=relaxed/simple;
	bh=bhuONdQq2NjqcMTAb8oejOEM8PvC2/UqhANihYNuT5M=;
	h=To:Subject:From:Message-Id:Date; b=h2jnn/lAUmRMdUv/1bac5j0tJ9KonxWwZo+JVhehX0+HHUQtP8FOBwewkbI0CO1YwnaLrnVUkvMuJ9ci2uexdk3ls2c9awhhvqF9qaeSKWH+BRACBhzvytsEbr7o7DCxCMlMeDZZcJanBXZLKM7FzjpZZsdYKaGopijz7UQj0XE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMlPdiXi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMlPdiXi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3550C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774707293;
	bh=bhuONdQq2NjqcMTAb8oejOEM8PvC2/UqhANihYNuT5M=;
	h=To:Subject:From:Date:From;
	b=cMlPdiXiKrU02No5b2009DG+C44LGbNfJGd0mfDtPZq9gTp5YY6veE0fmIVJURnaC
	 pQ1ueYg0AlaEekPM2m1aAdOUlfWHHBhyNs3jiUkgCs+a2QgmxVPeMpTr5i46dAKs0A
	 ta1p8KpLqpbl5I2SrHZXPLD8Jv/lCjq8zUc9BEoKbWZ9+fAz+AcQ3n9yZdRKNW6Cmm
	 nxYwilUh85eZ1qM0Hd4HUMCuA04O/VIpug2SwizVXvtOih/r8I9GxDRexI7R9S4G+t
	 z9cFxaMVjCbp1HMEm6lQx1af1Vw2Vs30mm67prmYSO1+cOSfV6/58xtgy3XdlzU8BK
	 GmziSUpVppYgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9405510F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470729359.31385.3641003989774818960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a76cff47b38c3d2e362246c598202294bea197b75b73d36aab258ad44d25576
Date: Sat, 28 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774707293
