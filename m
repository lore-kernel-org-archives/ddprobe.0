Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664511B21AD
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746874794; cv=none; b=rQYIu9lou6TgKTMbPl8ka6biXJ4azL2bd/brSCz3n21NUp7FnfVLcHxoZy0U7OELUKGWodsdeFnWTAeyxNsDNTivckwjcSE6ejT9X4IvmcfZ3nFZFsRoVMA0NWbz6mk8dyDUkCdkJApyfUQt+w12BrF3fdjanojMe4LPhFr7omk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746874794; c=relaxed/simple;
	bh=aiw+aaG9XKdG5zyF9p9EFZvhcE1GiXskB/5XIeJJ8Mk=;
	h=To:Subject:From:Message-Id:Date; b=CQZjjaWILtF14m5KL6+nUsN/SztU/6GsCMutQjZ0WoY++Rw60CE88xb64m5Zc1OfVOMpn/LrArfUTWtPpcCPvtgDzCT5cmwgIKk3KCXLjpzvF3hoINaHsSvX78xlcHyqcvkl6lTuXx4Xsp1EIyYU9vlcHpW97LRqc/Ify9a+kmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Chs7owtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Chs7owtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E7FC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746874793;
	bh=aiw+aaG9XKdG5zyF9p9EFZvhcE1GiXskB/5XIeJJ8Mk=;
	h=To:Subject:From:Date:From;
	b=Chs7owtOmcVu6orwk3am4AmA0tJ8PEvQcVDs7KXz/OjyTGx1DsPXN2wyk169dBSCQ
	 lntOsHEm/0xtNCxO/SoBQq9QtjpXYWRvBtaZCoUkvzzuHgeuanrV6ea/oiIMKMAT9u
	 Xk7Uml9rYrE1njQk9ynP0EcinNRCfKoDejxVyg2EHww6Ktpv3gdMLRoq1kimw224EP
	 R3ndHr685qhDMHsCynZYBa+eCrS31MCy2Twqu9o9wgf73CG2jZ+IhAzpICEKmJ5I5z
	 ETYJNWlSBQHYLy33E+TSGMyDxTT4sRmGGJur2HbSt6lVuSBWAjZAcwN7Sz+3fR4WUj
	 e+/pgoJvMeJRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B8AC3ABCB
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174687479358.25243.5107564813467348581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77a636a621a5545ae9dc753a6dd370695f97b5a3fac4e8d72e55dfd174eacf49
Date: Sat, 10 May 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746874793
