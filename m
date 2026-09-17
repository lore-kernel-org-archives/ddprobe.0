Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495B04E7817
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789664434; cv=none; b=mh5YK9DgIB7FnGrQyOfPYWkMPUQrr15MuaRnfSjWWCiPhgDHMGkYNhC690yJ3fvMd354iR/1tzY2ppZetS+EyHkyEUaKvXurVdqY/HLrd5+Mpfz+wq77YN/Chye5l33Vs2VegWJwaK7qEGO7LYqfaLQc0mok6IpLW7bo3PfJK6E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789664434; c=relaxed/simple;
	bh=IxsoPIlywbZUexcZGQteF6cIEhJCrVJ/dpFTYRR/iLU=;
	h=To:Subject:From:Message-Id:Date; b=XgDm6FrJnzqFDe+PvIoJmvJBoENrfKhIgXRTCjODQwj9CsL8F2vMcofKtrWVQuCSbybv+xvVZdZwRecKneq+PyVDf5ckZXhOwwSoQu7HY7A0umStYwNizPEtsf7daBdwL2dI7ffKs+Skfm1uXzG3J/Y4/jQBNng/qcy1lTveYCY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AjltB1AJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AjltB1AJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D84BDC2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789664433;
	bh=IxsoPIlywbZUexcZGQteF6cIEhJCrVJ/dpFTYRR/iLU=;
	h=To:Subject:From:Date:From;
	b=AjltB1AJgX/GknW68T9zfrdP5K8EBtYLwxjm6b4wkJUol+HAEN5IUgqEGkzSBH+1q
	 F1cRJN3tLinB65lL5ioR5V7Xv9HtJcQlqdoHcOZgJmbRl/0VEDXByyGQ52YRq7+ypS
	 e162J2ZlLPHc6DQaox70FPpKfOwPaKPIlWyBSvg6T7yb47nGLf6KC+kLSqB/cBT6uN
	 oD79H1Cx+LkxT08apyFdZwJmB/VKXw34PAi+xSEH69CHMHTzWmL3WJ1WWy8ux32v7K
	 Jv0QmT1rZOHw9zDwBTT0xiTdKBTu92U9+ztB3h6s8mf7XBgYPdjmcoYRUeekZn5nMv
	 YKduJ+Z7VhC2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACEABC982D2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178966443369.5124.16526534544586662367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: adba481e5276c06f442e0ccc275183f00f7059362245856d3d4f0ba68bcee2ec
Date: Thu, 17 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789664433
