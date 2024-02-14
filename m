Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A6C6913EFE8
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707946696; cv=none; b=n3taedu7DHo4kUt3Etb1yxY4zsNlYFrPfFeAtacZbSic3JXS+d4kv9UOSM9cP09htebko1BZxqkCcC1oVK+bm+o4dnLt0htpdQHkCLUQTn0ZMKsclm2Hc3rGWAsXiAS8wrkF9FKKF0p+WdyDLHCr/uPhtrMRfHckhnbFBCUgbqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707946696; c=relaxed/simple;
	bh=pUUGJDpZgtG25i1BiSjDl6XD0mFE5DkVxl7FdSQXoe0=;
	h=To:Subject:From:Message-Id:Date; b=HfFUOYbmqyoTh+qFuqFQ7zO0x1vF4MOzZ5RTG7PUnZbP6U4lkHLpMt+HZqYl3WjDFSmOTQ1zcg53Ql/qYv+LgPSy0uAap4fzPklqbMfXRtT/8uwF6PqVhCNCroHEJc/odm/P7cRTdn2/6trt8/GL5PbUlarvgTggtgN/IdryqEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L9nZQupL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L9nZQupL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75843C433C7
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707946696;
	bh=pUUGJDpZgtG25i1BiSjDl6XD0mFE5DkVxl7FdSQXoe0=;
	h=To:Subject:From:Date:From;
	b=L9nZQupLnm8Q1VsTMHfq5oa+K/wOh/Txap1rY1x5ULAXV3YolQtybpsz+Yd/4PAXS
	 hGo4aw7UY3I+DEXuCgwn1jtDkEFerXFuly7nWYNUxu0/2fwq77qGNsFJpjkcXb4AGh
	 KGDA3PRSxQqqsU10iNdNw7pqtwyYctAcbTacKekoG8Q6vvLn0TcMICUGzev18kZby1
	 VzFIlHFrvxkg/p8H+kd90KbIILGCMgu6Tqjrzd22/txe3/USxaTAXLTXyaNhYxULKl
	 boTlbpbdTUfZcl//T05YEZjJb5CKzID6C6coZ9PoUiRbgTfr2Bsgxr0mUIO9pRGewp
	 DEFcWi1CBXEBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D7C2C48BC3
	for <ddprobe@lists.linux.dev>; Wed, 14 Feb 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170794669637.24268.7757091263974180314.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a48ad4b7c2ad33062c4adf12e184e32c62e05691b4b870a392dbe63858902832
Date: Wed, 14 Feb 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707946696
