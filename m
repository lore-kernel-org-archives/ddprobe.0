Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366771922D4
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741420734; cv=none; b=bt95Qey9XTU05rDZ8q4clFDxluI66yX1MnWj1mPXwnpP8aJ0Z4B765dZAV7A2xkkfqTwX4amo5o1cl8PcFpyiEbpZwg4jdM/BFEIRWfqw3Ol2sghC31Bjc6qhODCjkVb6ioi4oF56FvMW29HKWaT2yLCArIU8yuTnUW3VPYmhqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741420734; c=relaxed/simple;
	bh=J+7Mu2S9Jbd/6ChZTiyngZj5N+c0QfgflqlPL9bJpFc=;
	h=To:Subject:From:Message-Id:Date; b=n/CuYT3vGJqdaKOKhOaJuhptIxANEwC3w8I0tu3qvnar8WBG+rClJVksnb20RebajQYEfiAhbwRsaT9av677yjgI6U3qtO7v3jsSoVsYxPi7hVcY2kT0+6ruLSvYr3p9xOywwLHzPmBL95bvyMcmry+XRsOiM8J5Hs/G/JRUALI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PfhG6mNQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PfhG6mNQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B06E9C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741420733;
	bh=J+7Mu2S9Jbd/6ChZTiyngZj5N+c0QfgflqlPL9bJpFc=;
	h=To:Subject:From:Date:From;
	b=PfhG6mNQ5zCcrpKrxZWjz3U+NuBbDnBTqGNOH4BURcbhAUkKS87d0uA3fzkJ/n482
	 E27ZmF/CB4o7Cs7KcgYi/wcixIqZYtfrkyQm75iiqEtycfmKDYChSp4LbghYUD9yeq
	 Rnzwm/bvpEECVZ4AdeVwOXdgnOFAL9yX392EYOfjW8by2LprPcbHiFC/wseRmMyG/5
	 Ylj/WELUR5ixj6lCa5j+x6goOyhC/Nuba4ynFwqE2fzlYPI9ZXu3qu86uhT6rFsVvW
	 rW+OS0mhxKJr8iUg0SfbZNJOBm5YupmiWcF06hppZVqn5de+yKc59eml1DRwOha/nT
	 1qmsUTtADbMSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9659BC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174142073360.22065.10316247062011482432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4ec1911e647b5a5a125560a5433ab2480855d2dc5aebaafbc5f62c2af7e28c
Date: Sat, 08 Mar 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741420733
