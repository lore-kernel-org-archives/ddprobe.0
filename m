Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E063612FC
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771848893; cv=none; b=i4dOPO9X3Xp3hgFIK7qNRuOA7CyMJkV4Wt8MXdRXtSpgB1q2u9tfFNPwuoVN7Poh3ojqiSxvNRjvvfmhJsoZ/2Fn924drVecKKmRSc2Iq2+Yu/V2GfjsStdcLZ/G8sjVcXp09ZoiQzBeq0TDZ6eKpWP8zOucNKy8caBO4QBpwmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771848893; c=relaxed/simple;
	bh=v1buyJLgNSvVRVp3j8+qLh4W+DfGjahBl8fWILMucuQ=;
	h=To:Subject:From:Message-Id:Date; b=AlMiP/HK/q7BCa0EYzzl1Kswvf7wCBHStT5muMDECfBjRZCIBbR1Y4mAZZ5hjM1n22n7uoDF8uGPkkgdPbMzlYn28HMMBkWjU8W60ClqMde7Ilu3CRbHI0gBmda7GkofhmMuGS4Kz5DE8QGsEsdpKPh1SZlT6bqFsjRBnpW8RjM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H52F3fWf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H52F3fWf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771848893;
	bh=v1buyJLgNSvVRVp3j8+qLh4W+DfGjahBl8fWILMucuQ=;
	h=To:Subject:From:Date:From;
	b=H52F3fWfI6/Zg+LI2S22WEdA2jo70wJWfAOPGdVy4D2ZJWtnj6LiiGzZZ6XUyVdtN
	 yHKGzPcNEfunjIM1WXt7XddWdz3zvtHjpxsB4iZPH00QeQNlXeldrOZWBTYS2xGkJm
	 sl8grJtidJdXW9nS9NvmJAyd3hRHsJuxRmBe7WAzupGez3FW7qkASPMfnNVH5nzAiW
	 EXoX/vkNgSuovqINzkffo/p9jVUVPFIkLc48C1JVcKlRE957c+lO8srzOPTjC0Sktl
	 PwM/PryferIg6Kmb44ajCGUuTq7uqgyZxeP3cMm9q8/mYoIYCkFpq0rknqo302+hCa
	 yL8Ovl6Belv4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CB0EA4FB4
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177184889358.29285.14562277690538262828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 869e221c80127ef477aa2b4d20ec0259dd3d87918c46d64f5ddd3b62f77db6b0
Date: Mon, 23 Feb 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771848893
