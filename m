Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2610A27C862
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745863194; cv=none; b=CQO3EEWM4U2m0OWrsrNv56VO1W+QogU8NQA7LO/hYn33pAHQUfDg4Ke7nICtOgExQ5hVEJeHqCXpd0R8boHcLZcmTH59/oTH5siaY4z+eYZ1cpoOyZG9wYKTN0KS4Z6ozUZLwQBXgaN3bCCumNCtTT5JR3fjYdMM1J8rzRzjM6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745863194; c=relaxed/simple;
	bh=KyqLB2k+h6o+ozCLsD1+AZmNgzTWMA2JPK9yNJHnPuA=;
	h=To:Subject:From:Message-Id:Date; b=NTE5GKYrHGqtbWSKx82Jgw19QvhG04uzw3uC9FU9oHOBwOzGpxZNc3k/FUSZ04b0AyEGlz758Jb6TykSeCIjGS8fWsZzJnI+hibNZt1tn142eX3cnG0n5PqhoFpY01oEKs5dVNLNmjYaGyrhmL9YObrPJM3TuytCfLGpcmhtCvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaYEI+Mg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaYEI+Mg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BABAC4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745863193;
	bh=KyqLB2k+h6o+ozCLsD1+AZmNgzTWMA2JPK9yNJHnPuA=;
	h=To:Subject:From:Date:From;
	b=FaYEI+MgMsTGWV+YTMICdt+XtrFPHluBuMmpIxmHsIQdhlewDzS9u/TV1ge0mvBbU
	 LbLagiuF/ZlVC/53GU1ZTa1VgXaRklgcmCS1al8VfVMSOhSgjkXyWpAtVp95rPcsH3
	 x6RIgSPPY8zXgu1LawFY2Lz+ObXm+Ji13zL+SBT05px5+93eAePtk2MpW94ipN6nRf
	 Rrmk1Xx5W+mNjTKqPr7u5pYsOy9bb2XfLWyFPW2HMatsyOCEheYsFLTIqbMs/a+8Fd
	 db+akNt3+EhxCcIX3LCutj5CDn/yZnp60/Vuon5cdzCpiPj/Q+bAVJTM31uAYOppsF
	 zcw6Ve6lAsuBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE1DC369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586319357.16620.11999051636960199442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 866e609057fa98fab4a67b16ea7eae7ba47817121bfd2075d5733a84affd78c3
Date: Mon, 28 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745863193
