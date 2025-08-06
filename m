Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35E06220F3E
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754467794; cv=none; b=Ys0MOSGJRbcIIA95eTcO9repp0v+oPr6EOcwt5jdx9yGDHQXwCSD9EEcSSJZt9y65Qk9DpZGnlsnCHpYBpET/0i/mo8hzT9KUEYUbEkKfR+g65ZoNGEa05nI5vAotMNb1NZtrgY9tHkzejNnZqu1HM9esvtcnK+QCMie2KUvhWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754467794; c=relaxed/simple;
	bh=m7Bo5mwq9rFlatCJbg6J5LSWi9/55rSgDoCh/OUBhGM=;
	h=To:Subject:From:Message-Id:Date; b=erImmgYi8sbq6KcTiVJT2lqI8CViFcC0Ipw8UXfbdGL+WjZ16GUmk/1Lvwq6f34zC0YjSkGCFLJ8VRih76DywIFGI03y3QtdtkwLVvdjQrWbKXfnQwOIwro5TlC/nDf7/1W5VGjV3axhXpZL+G/nHr1PwfpzpG5IX2G+y4fntdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUaa92Ng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUaa92Ng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11EAC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754467793;
	bh=m7Bo5mwq9rFlatCJbg6J5LSWi9/55rSgDoCh/OUBhGM=;
	h=To:Subject:From:Date:From;
	b=uUaa92Ng3s5UMGeO2w3kjDAEdSvQXFHiPlN8Wlnqk4eaHs9n9LvEZdDhQQsi4zsla
	 7vNVONFzC6PHmqbrV/hsc0kRfAQcOKLDGQ05Wc0poNDmNSIh+HR/WwHh6Bs5FTsysB
	 QigJzthlHNYdYOCeutHbW9eENDqu4OBaoyEdfH7Py9KxxTT3eLHY24rBeZK8To5Xzz
	 5f+srLntO/X4V4RqTk5PxM9a5cHTk0hR6K1/IZDCl66vTKORHrxhQEZZ1hnI+R0nWv
	 xjn6vyuvsSHvDIB7gQqpJwTf59SIXqvQTlkF1JyZcfEbaMHZXeL8Zm98rmfEfj4ljX
	 450PDXDKnAl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0B3C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175446779363.9710.18264021558715865257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b22f6b48a0b781651da8527d0ed76e6dcff80c0ac91262d5ac072cf3c21d4f19
Date: Wed, 06 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754467793
