Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74772AD39
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:28:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740911334; cv=none; b=Kt1fGY4b2KPyBgfT4Av53XB8Gle0Xk8uk2eY2hd2k1N2i89c+Kjrehhn2cSh6nZIjEPWF4h9l8jenyeX4hTSCFNcgyISL9Ss92C8JvPvxrI8lcYvn7536vUx8brUMGC6JuqAz2GNqkPXX8aRvbveAeq32D4e11TZKO3xLUmZiE8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740911334; c=relaxed/simple;
	bh=0AClsV06/RJ/Qhxiqm8Rcitq0RomsUIBZlgs2p7A/N4=;
	h=To:Subject:From:Message-Id:Date; b=oe/7lYT2HsD7zq7kS8AcWqsYBzN+mFGJBQGUSHPhuLOAa7g8VwnSCfPVZCZ9Hc3wvc1GGfkpbN2APmoY/ocKutiohhkPnqrRpfXLGdG4mX+aXXFKVNoYYo1mU8RcL+0pXQtqrjIgZvBwZAoxdS7g/2oMqMYTCllK/JA/ceM18vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWJbFx2y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWJbFx2y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1330C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740911333;
	bh=0AClsV06/RJ/Qhxiqm8Rcitq0RomsUIBZlgs2p7A/N4=;
	h=To:Subject:From:Date:From;
	b=SWJbFx2yqd+whis8BJsYbnCLkO7HcaM4qZ9R8W4hNT2MnmQLXw3olNEY13q/luTgj
	 v3Zd6H88BYfcJbH1bbaoXUu62iUI5o2x7K15K4Ceqrc67zq3KEe+7hshCcZJMnEvdq
	 8nqQQsH73M6vr+sZlc1oT4lwQCih9CYpZ9SIO1xdK8moMYI7fxaqiC2JnCh5E7OuAD
	 UwOncR6zIMT1oXOh+jWH2ZAWcsNmCHHYrBDu6IMChIX9RRkuzJIw37Ec6dRVtQqC2m
	 z2XhpOVBWQWvux8IuKwqMs0ZpgATv9A0is7FHlMDZ6m00K4nknn0NDWI3K0/G1IEoQ
	 xXDIwILgAgipQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B291BC19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 10:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174091133365.19494.11514049501840695599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 913f3446126f006df2468c5103090c5772f4b1116867217be1ea367f0294c60d
Date: Sun, 02 Mar 2025 10:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740911333
