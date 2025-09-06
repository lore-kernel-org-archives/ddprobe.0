Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8275299948
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757189993; cv=none; b=HjnBg7YzZ7RmWTlYaI8mPJJ/YB4s1ORVtkEfK59nK3Fs9D4CCnxE35SgqXyYH9r1MzISCHWhZPelPY+oJG2366uuyc6VM9SEXXuCdkCSSiXyBJzgoLwjMpRHlvbM3vorqLm/v4KxEBwy6FZahhh3kD/shqPPHOQnh8FH6bApOHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757189993; c=relaxed/simple;
	bh=yGM/6I3kS370oeS98EW3s2nDGAY1YARJlJG0r7ixeQw=;
	h=To:Subject:From:Message-Id:Date; b=VB54NkfqTD7Q42oJ2E7z4JYV6x/xwDOI0aNfMbVDhs8WnFbvTCdHD3DvVxCNXMJGrTDVC867ByLbbQYwUiEah50alm83Ty0Z8QXmeWa6JSmtrHQreodI3JI8oRxpbgsH1iPsQaH2B+qLY7eZrtWEET3zmznVSxjM3x4XstAOjdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZIMmhqqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZIMmhqqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0206C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757189993;
	bh=yGM/6I3kS370oeS98EW3s2nDGAY1YARJlJG0r7ixeQw=;
	h=To:Subject:From:Date:From;
	b=ZIMmhqqif4gqYkLgsdO1lLnBerMEuELsuIYV3hHul4DqSdYSixxGaVmjiag6jUgui
	 W0eYoiMFzDH5M+5qn7jwFl6Kr8hnEy3HiVC+Y/SNY0sAHpRgNspVhhExUXkP91Da0X
	 LTE+kmF1mNmMZxe51BrvP//PY+a0fdWaoiwdmbrKtOnLoEpe/xUXnZBQIu8dJ1e/wN
	 BFFT3hKT8fMsOQhnApBbVQV+IjITYOEczkCEF9So8yIXLetlMaS7+RWipFfbiNBmvj
	 nS6iV7ARkofdFaRjmEw01X/1MnzfRYagXDN3Vo3Jm1HS39XBm07AwVoJ7eVnMvyvwD
	 EaIt4iFL5E7HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169BCA0FED
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175718999357.24202.486934344524102493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 097e7c0d0bdc2512caa82bed0ff30a5067217f3aa9f266a74638a5ffc52ed3c5
Date: Sat, 06 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757189993
