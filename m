Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2252C213E89
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784868634; cv=none; b=iQeq2J3ZoQcevjXQy2+UhYbI37qqyctMqmNGooqB+sC/SliR3OE+yaDCXw4gduCvv/G7qntEpx0lfkfMxNTrU7OddGIHD/Gz2hrFRTU+zZGTZMJQr6N0VkL9rVEbNXPVztl8kANtnm0Rc+bOrBIWwJLaBKSx4DLE0qQxKuv4ytg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784868634; c=relaxed/simple;
	bh=SJXhJeWZzTrSLq91JvtnKHIwFIFSJ3iNCmnN+fsN7o4=;
	h=To:Subject:From:Message-Id:Date; b=NN3Z5itUDRedumHUKTr0+Ek/kmPJYFuOY5BTBZSiagJwuWCLSuNIQo3pm2LiIx40RqBK7Cx+jR+hW2avdX4morRuVQlc66PZ1a9k3FXsmK1tHijampEapKwvYRiGUkWmkbew/GkBVvCLb94id06bdB9wgGLnBT49wC5NojJj4wE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVRWCXiN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVRWCXiN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB7F7C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784868633;
	bh=SJXhJeWZzTrSLq91JvtnKHIwFIFSJ3iNCmnN+fsN7o4=;
	h=To:Subject:From:Date:From;
	b=jVRWCXiNI3iHt/1fKiPnfymZCJIV553kTuaK48lGzoGZrn4tzJKBBJOVE+QcXrM88
	 GO1GsMNnbpy1NckwtVQraKoQLUkw+IgeeyabPhpTFSzO/jEQFeoF5e/pF91tECpFfK
	 xS2i6MT/QtOpqpUgFzSJjJhB+XUz50kJcO6DQZgImNL9+XQcrXNuIqLDegmfWsFbll
	 fOzLNHIRvstFEG68bA0mEbMlyEOaH1S22Lg4D0ShjzsIWhWA2q8LXAVLrR0pC+SmZt
	 1eRv10FOfOVXWvggpIY8FxNcI5Ae/Fs9TYC1Rs48v9KFAhZVmpkjdJ/SC8z0vUuW4Y
	 ihki3w6uDjcFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A84B6C531C9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486863368.12372.10705398153007385398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bc34f5408453b8e761b9bb95e30136d5aec2c5e8e9c24ae7e69afa11e080142
Date: Fri, 24 Jul 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784868633
