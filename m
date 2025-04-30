Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 357851DE891
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746047394; cv=none; b=cPpEBjYjE8OhbGmlInhKyWlCf9UgWJA3uqL5ShMu9VIna1J3UW62KF1yumhA2iPBnysk6ZzbwWEdgDlN2MzCaCHCu0A77e36lYjad0QAnFLJWt01zm+Kl0mq0oojRyfuVw3jkwT0smhpzP95I6Uc4dKprNsPpqFEcU/p7MfT7Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746047394; c=relaxed/simple;
	bh=cgLVDfKSHY6/r1qxBCp2Oxiqkyr99hIzfOPEreLno3A=;
	h=To:Subject:From:Message-Id:Date; b=sRnzIFi5fUhfzkJMSgs422+W201ETqexiOoP+/CEPUvlUc0h7zZRf93oKPmjUYTKXs7Fzg/LFqq1Bv0YRWlRmPQmXsrdNupgHE+uw0ia81bf+6RPNYhcwrOX8MSIyqlKNI7du8L9tAY3yeQu0ssP0+l3WXX0tcg//9+WnxAnqPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gv92AQm4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gv92AQm4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0702C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746047393;
	bh=cgLVDfKSHY6/r1qxBCp2Oxiqkyr99hIzfOPEreLno3A=;
	h=To:Subject:From:Date:From;
	b=Gv92AQm4kyFhwJBDZ+qybfKkNPPWibi44JGMkRNCS+UU0VVSTds9j6o7pJ5gOPLNt
	 DI8eJuj5eci2ZyJzwk7EWSm0FSCfzrRr5vDivYqhcQye1x1BTf59aloRqg2zelruuU
	 G1LnEZQfDdT3IeElI7Cf/GADDVa//KogTvARdkCQpgx9iPi6FiZKoAMO+VrMyQOXt8
	 96TLxlP51UOQm8gjmy7tcHTz3EQPZOYRzTI/0tPclgY2mLxWq06/Ht35dLbd/FbZWe
	 OiIrNNE/jrtdgGHuiudvMwjfmYiK41QMc2yHzqzil7kGy9Lsug8+8qxsFVKlT43lNI
	 gGVnV7uhGY4Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3CEC369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174604739357.3048.6757123198941540634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2a49256add22a1494ee42d284e217c694b547fe305f6b71ed466af8a5c955d9
Date: Wed, 30 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746047393
