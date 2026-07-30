Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9352C37CD28
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785392436; cv=none; b=jEhv4ToSRsg9pW7n2v/tiNZBBdKggMXKoQdv1RtLGgDFrLBcbS0GX6FgOgHQiIUucvWKNPdrRGyDayYSDaxWYA7a8MJyyC1RLpgGniDRr1c9mSByG2/z4IBXjEwHEvR4WWfp7qHyVDGS3ljQ6JqKW1EDZ+odKPm0nyTjqjJhwKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785392436; c=relaxed/simple;
	bh=styJuKOrqy159E6d/P0y4pOugdGQzYIB7c85fHd/Sck=;
	h=To:Subject:From:Message-Id:Date; b=WJ9MtLXSC85Rc4IU37ZYSv8/vKaW1dwXsBaxaR2jJPczETwdMSiuWS1KJke2G5OQHNdfUKqAjJmuaWc64zjS7FKoj4iIgalI0LQoYIyAGdb2O3IUKa/R50hEEVCHkJTXuR6RCxHNec82lsWiCLjUvRTTeYy6v5IECs4cBeUREfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lh78WR6R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lh78WR6R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 37968C19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:20:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785392434;
	bh=styJuKOrqy159E6d/P0y4pOugdGQzYIB7c85fHd/Sck=;
	h=To:Subject:From:Date:From;
	b=Lh78WR6RPUFtv3+RG7pJRJ07XyXmuxYlq6RT/hmq8LRMJ+YZ1G1eaePzRoy2RfAYs
	 W/u/OWBYpTc/ud5E0mzHsZDdjEQ1EzWGCRmzE9MfTF/zteF9P93ih6Uks9xN16qSjG
	 kVdcCTVkzlF++X2wd/ufLF3IXRiXDs/6O8lPbqqPNt6NpAL5yiLiEoxRqqMUEOscG/
	 zTx20RHnmi+hMGNJNWfn0bObqfG5oXKuSVIunauSXhqY9q8udZK/hTYF4inxDVM8OH
	 mTLWhpdZ8EzP9kUBpv3jBQ8IhG7ZvrdGyMgHwXawFVrOpsfe0sEbeY9bOoNxfM8o0v
	 OkQROCCX/vSQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E278FC54FD2
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539243390.8076.15179032930645771853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c2a06154a3fd711ec97dfda65f9908ce1abde78ab21135c297befac96753099
Date: Thu, 30 Jul 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785392433
