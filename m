Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79D45A48
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718518703; cv=none; b=cTUlLj+qDrNtbiDyT0k4e1u/U/nKJ2SRzL7i/8o8C6+/hrhvl9pWQL7kBoDkHOmTs2hTVWtQli2+EFD47noAVyJ4GUO1mj3ayud09Ba8/YpdJ96yfM/YUhfofbhZ5DCFm/bKCoWIn9IhPSebShFsCPWrjwlMmb5ngC6JKv4+phw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718518703; c=relaxed/simple;
	bh=STgWRI4FZTGnEqLV5OdyC+EVcgs5Q/1izqvSiiw9qEY=;
	h=To:Subject:From:Message-Id:Date; b=tkTmpMPUNbVD10CWDTyHfsfmCdtntksXDRJ3PTtb9Zc6Y9J1w9Z617ZqouuLFJ0o9rrDjX7Ten+dloOJzTX2nT2fE9lgZliM0ZzKdOfXPtF/nKguG+976vMxwUUDnEeoHVJozvGQEH19lLIFqUZYo1CpAt3T+5hHulemI4Rs4Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=elzw1bN5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="elzw1bN5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4EA2C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718518702;
	bh=STgWRI4FZTGnEqLV5OdyC+EVcgs5Q/1izqvSiiw9qEY=;
	h=To:Subject:From:Date:From;
	b=elzw1bN5nCMNZdpxZKA9ns1t+DRMGVQol/uszSsw2OaVt4wCHN78Oj/5Pi2FeWQDp
	 XfaPba4B2QKjqBMHk3K4hN5P1/0K2cDzINA6oWBPxWj+Q7UEG59lNNiEJQiXgma/V/
	 0eVM1g8PjzsbT3LnOiVuMUchm73txtEjT1KNjLc/S3ylvz4KTyo6A7tqBUMbUoyeU9
	 MkxomR7eI2iPy8gPIAIYM/Rk9uU9sTKEjJhWDfFAc6AiNi2GrJWy6KkqM8wFaiBEhY
	 i9DZLj++ytIsm/377ig658wZ7WEeXQ6gtE4/2nC7jKsa7dJAwZo3JFsR7HLiCOJqVw
	 ta61jHKPwlW7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB65BC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 06:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171851870280.32760.16096391183979422148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d790ee513a844085b3d49c953109420dfc787fcd71fd301d4f2084e6bc88d454
Date: Sun, 16 Jun 2024 06:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718518702
