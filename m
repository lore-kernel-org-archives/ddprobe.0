Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6418B313E36
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774700094; cv=none; b=FaYSfLFggDOZMJ7zKeCrH4DAa/gnGtgIQMv/EhXO0bdOLKJVuURuwLwiu75D00NyBsiQYLxBIyKu7xfq32o3A/ckMcKDlSD0n1Li//hb2UY2BO9XoFXCmyrEEsw+y+xN69ee/EUbFTjAavt+Zd/lY7PSsglgUwZVG9U4j30Qlkc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774700094; c=relaxed/simple;
	bh=OAE2vCDSWWuaf0hdTIoHVcPelMX2C7TzO4nGwsaioOg=;
	h=To:Subject:From:Message-Id:Date; b=W0492M0YUiUGOL2o3aiLvDkmr6UneRKMXtc9ALi2SwrJ84+askv1XCLEVTyOJkTcXCnha3aCnS5EmJ0ibJC7uPMZfhyd3myz+DSboTQ8pVhEE5bBjhXZ704r+9CNZMoKfFXcPMVnqCZvnbJ2PSd7+MCNDhhAAi+vl5CPMseoC3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAbCPr+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAbCPr+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A41F0C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774700093;
	bh=OAE2vCDSWWuaf0hdTIoHVcPelMX2C7TzO4nGwsaioOg=;
	h=To:Subject:From:Date:From;
	b=qAbCPr+FXaWzCo224ShjDKsCmBaVnrSEwFE7RlNtGtLZOks4suD+nNlV24weDcRmQ
	 HFvbX1aPlqEB0BO2XrKhzPzN10tgj1Scu+gjRJNU8kqod8eV+ZAgzeWREWkVyoSkLJ
	 wNGYAu/MyQpJmm30z2+N3K9Fgy5DYjRMPleqvpTYOtUUQbqcRXAMQ9drx8TBlm0WyM
	 TAPBS/HwJmWpzQV1mqBEcDYOt8QOL1VB1JGnUt9PfJHygDiNjLnuVCcrssxVAMLVRF
	 2g+pLn/vZVOLsMES4eK+gysgOAaUPbUYDVwPSj9ulSvrg+egtMRTiKbyJtc9ewgIRQ
	 9mCCmbWvzm5lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924FD10F3DE2
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177470009358.17520.5533230744952455894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 105ca86a8424bf73cb902f91ec491b3a6cd64735e47c98c1e9070cd3c2151835
Date: Sat, 28 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774700093
