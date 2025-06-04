Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AE3818DF8D
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749058794; cv=none; b=DtvIPvg5Kts/NVIf20UAKzjOMtlQsT3kb2NtQqLN5AGrEmyEVeh2+luxQoZVNjT3L/howb0YvqYaJnguJlvgmHtf+Q9M8tF4iqWoeDGtpGrfnwFg666auydk0eqpMMzwNSWbiT3wMO48/33d7FQmRVfcZoJ4MAYsCmfI6eZ0+gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749058794; c=relaxed/simple;
	bh=IMRhQHT6an10Mf26JcxAfwinMJL6nSfCqfsYuxGhqnM=;
	h=To:Subject:From:Message-Id:Date; b=T3966JhBrzriyzBZqc+SkjXYEew+MHGa8NmIr/Am7UB80bWcrNmE5hMbQq+nt8okcFbmZTMJDq5h5EfnJkyALjQn2F/EhoQOwTwtGoTVI7OntmDXXrjDdgMiWaBM5e9Lz/im2ynJp5gW63E1Dpk1iYUPY9EfTt9VjTy/ar6dKtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2x4nSlM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2x4nSlM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC5C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749058793;
	bh=IMRhQHT6an10Mf26JcxAfwinMJL6nSfCqfsYuxGhqnM=;
	h=To:Subject:From:Date:From;
	b=l2x4nSlMCrjDMAUtOB8Y7c3/ZpcqN3yjdOK0Ouuavp9cE3Ve1gYxALHCpJyjGSIqQ
	 obvWEhoK27ZORFJ2sr69UI/OtnpcK/5y/BrJxz9cMTY7yP3Mfc7LOIWBH6zpcYFmye
	 AIyXPQl9T137ckZIUfwB/gbVJZMmIBJOss2Yx4lQ+5gAR1Pl6y4ablOtj59xMm2Ik6
	 gnuFIJ9GguYrwyCUDclo9xSmKWZ8ram4AvV3ki+aNqKgEFVpZDq1tqI1CCqrVNHpLd
	 qtlnsYJ3qx0HLzLAvSPMff70/Xam8U7+enEKGCMTHf0mIpf6UMVi/vXyPzX10vREMh
	 8mXKygAjjPcAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B5DC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905879358.23363.12149101821199917654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6142bb47e907ea1353ee3c6fd09d64b5d0976da1c9259ec6f5473dcfa0062a9
Date: Wed, 04 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749058793
