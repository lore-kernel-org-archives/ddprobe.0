Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1273125A9
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719619463; cv=none; b=Xzlf0UOAoUxMMse7E5r++df0FdUUIbfm1KDpLaZ2iY33RJLgNo/hO/k7pEFcJYhzc+rVKYQbpUkASXV0kXRSdVDqPez+eixF/XVKXXvR96Q+C93rC8luZvICH7xCzND8Rk90lDpSkXaMLJGp43OXCTdPdqvuMGl3MLOXAuinPn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719619463; c=relaxed/simple;
	bh=2Ig4BqjJ1GF9eC1AmZwT2ZwzXflM0JAoXpT7QCUAAIc=;
	h=To:Subject:From:Message-Id:Date; b=Vkt2TloPn7yp5hOSryC7H7cl5wxMzzH9Gt2jIKknEBQfQpql0kPY5b3U8BJ5/bVeDcDO+BOs6pKsWB55fH8wndBfp44bhLW1Df0g8BkA4jMfywhuN+DXYRo9a73bjwn+SjHOWvgU3OO0Z/TzmtvS3ljnK0JEgF2MedknW+Rr9S8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H+eLPrKm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H+eLPrKm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13784C116B1
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:04:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719619463;
	bh=2Ig4BqjJ1GF9eC1AmZwT2ZwzXflM0JAoXpT7QCUAAIc=;
	h=To:Subject:From:Date:From;
	b=H+eLPrKmOEYFYWXo8Ctc6Tsg1eEsFph+/hN9KJwYMq/EHHyUryXtNcLCStDG0Btvh
	 15BHnzrkaeYyKGNKFirPuOILoMhVn8H3TBSLLx3/Pc+SnNb/wOtXPLUDrnqyvCc+vE
	 pv5UUXFQiRzxsBESUkHdvAka03RJefxOKilsttuL5TIxt9cPksAu3hZfOGJqdg2TDS
	 J+hsPbL8SeK0KB/73jLNRr/e5kS0YY+KwB8oB34eSq/8KufzDfVRP+xa+lFDr3b/sF
	 /1g3HojjQXNfey/n8ECOsJ+fDmzLH5SJzXzDP6bqPa6XUlgdD0p162j4FUQxKqa6RA
	 s7SX9dIdfk+iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EDD01C2BD09
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 00:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171961946290.29958.5730735208952732984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef508657198485dae152af958f6984657e9b67e1f3d8821b87da82584d68e3b9
Date: Sat, 29 Jun 2024 00:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719619462
