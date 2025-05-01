Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C57A13AA2E
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746111595; cv=none; b=S7Bye+7FJDTf9EAwIXHU+ODEFCbE1yJW1jCLhsGjv2et8MO0YtK954QbmNx8C5ilmPrJOGFPYFYPxaq4YeA97TalNApLTo+DWgAJTEPRQ11v/QkkbXX2kaAUOk9k8MPP9pdkQWyTBsYIYnMK01zIelqHL4KjvIOLNOn342nIQ9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746111595; c=relaxed/simple;
	bh=1Yt4JjwosrdXyP9zPlb1PjEtwhsVTP4ft05uP1RCTyQ=;
	h=To:Subject:From:Message-Id:Date; b=m7V3PZ07Jp0t7qpiW4957hpeaHFhHUCtDuX5KCq8i12DG+pwEAaZjU8g9vaeoU6uesd5oylfe8VH1eS0fczNNLOWOO4keGw9mFOtpufzGbkDLwYDQS4PF+uS0TzAjk8hjSd0GUcx1hEN7KbCaz7zRWNAEdFsgscFnGzD++5S8To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WgpMIOH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WgpMIOH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9D8C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746111593;
	bh=1Yt4JjwosrdXyP9zPlb1PjEtwhsVTP4ft05uP1RCTyQ=;
	h=To:Subject:From:Date:From;
	b=WgpMIOH3DxGH2Bmu2QQzRAEXr9tH6WVQf95S8VpjPPdLCry37tWeUPk40QkT6Y3t7
	 4si74DJLbf+kZI+R2+5WGpPgpDLJJyFv3tNL+cpct9dDiBGf4xFMvJzFp3/vZS66PQ
	 pcYfv4uvG6wKgvjU9a211NTpgFp7Jpl028m7M6gDWXT1msUoYlfvDfSuMHh5jsVP5R
	 dIefKOT7otPObrUirzhUboYVGl8R7S4lAU/NHGPfzH48VKeMgIQ9mupxK+PEIji3p8
	 4OHGZSNzSkFxdzdcjklH7/Cl5jla5qLXgwYUd9ucAKS7TeU/DIpm4h4FRx9swYbY3M
	 Mc78HfrOA06Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3B8C369DC
	for <ddprobe@lists.linux.dev>; Thu,  1 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174611159357.10220.16293814903918815621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e1a8128c41886d54df16bb2a3b1397378245d70b6983802bfa467282834ca0
Date: Thu, 01 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746111593
