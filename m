Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363BB360EC4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791856834; cv=none; b=kN4NbCeXR/mmBh6SiEHQ/FXq6+2sHWZqV8sBc4g3h4SrAldLRuHEEPdEQN/QfOxwSBrT4dDw8Bz6LTASdMleEwpwjGAPBRxVoG4cXsBQHUYAd6R4AyyWBeB85xgF/TjFP2k+rOmKFgWgQ1yxYenydOFgc95guYyvb5xDyMHGEuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791856834; c=relaxed/simple;
	bh=tymUEEBFJ9zMsA2fkF5fOgSNPozX0VgZEd2OJXBJT10=;
	h=To:Subject:From:Message-Id:Date; b=MpB2MAmBwB3lt0GIdYRJCtCEt93Blc73IItH5HuJ19Kpur6/3/9sFqFxFeMgdv39eH5O1+kJT0SreVvrbM9efKMoPj4xnNO0m8rkw3+NX0wjMlSu7b6QPCzp1IQBAhyg/OuA+efoUDhNUToMQReejJ6n3BC47YTxzqkb+4FgJlo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWnaYKb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWnaYKb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4554C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791856833;
	bh=tymUEEBFJ9zMsA2fkF5fOgSNPozX0VgZEd2OJXBJT10=;
	h=To:Subject:From:Date:From;
	b=RWnaYKb+Fl/JL/kFu7qaHRTsQw4i1y6DGQXYWNGQB6Rtj2gdItrLMOcn9OxkDLmn6
	 Km81CWX9oglQbFt1mKNL4urrCvxXRTH+JwU0jR99iR5V2BTpPnfq2q/K5neMdtB0e0
	 QF4bfcHjTeaMbD70ZNKGhWQTbiJMVZ/vClpVx9b2I3EyhyivZipXRuEPhDZKnWBRha
	 uHj4QkA3AbmZt/SU1AC1zME/xcU3YPbc4kp8cdecvlAB1CtNOFzZxuqKZWH4Ub2+BC
	 9QEV39drGNur4dMB6FIdKxDGkWlWfCWbjtCLUo4kSik6y5+cuRPqChmUnL/k3XlpJK
	 R/9LcQ9OS/81A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD82CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185683369.21118.2469354131741710274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cda4c8440053293a9e355ba71a10b3625027833bea30f92b840997ad083fa9
Date: Tue, 13 Oct 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791856833
