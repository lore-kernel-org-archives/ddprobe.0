Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 126DA22D78A
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774489494; cv=none; b=BjbVsxcGclEDd4UzbRXCRuV9g/h+BVUJNlV+hD/q+ltd8X1Ix+qrBVRigXuF7GD1sXPXWYgyOrQavSqVWkqCviHczUodiKr3HxZyQupiPkNjDNdanNfam3p2M6/Ssem8+0CqZ4wzJZ3NQxZCdsQj/SqfDeBb3k3v52JXsAkRN5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774489494; c=relaxed/simple;
	bh=UGWU7sxpz/QhMOu4IaJehDDRzqsY2uHSRV4ZoIjyWlk=;
	h=To:Subject:From:Message-Id:Date; b=rnRkMieJ8BeTxGUHRtiFPwVG/UoX3aA8KLE6w7cQvzATXzN5nO0SEXBm+uRRLOdBpcV7e1yq+6kSYr8nEWu0FsWrcZsobxTVp4TtJIJH3V+CDknDhsY6mvkxufMclU0hMRlP1knpRIHoESbatOYTKTqryaO0xJngVR3HUnDxoT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bjHbZ/vO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bjHbZ/vO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6022C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774489493;
	bh=UGWU7sxpz/QhMOu4IaJehDDRzqsY2uHSRV4ZoIjyWlk=;
	h=To:Subject:From:Date:From;
	b=bjHbZ/vOcF58ebkTdGe4+vyqqDd1sjCg8t23rvEL2Gm17fqbLVeAxgnq6H9nM3ohi
	 Yjao9QO+6GlSLc9h3DQN2h49bJlLKuDHOF59WoglT6HUoxEAxflgt+yP48Fu4Wozdb
	 tcnjz+q+00ebBw9Dh5ipo4eQbOmYQM+U5+JK555KOwQVZcGsvaLOMBQRJvHMcN/n4p
	 AOJcnvd5qopWh+oG/Lmg0AZHHoXlNqIMGh0Z3J85EcsZki9yTqY0obxFb009fixUhf
	 hdQF6PwvQ50lRsq8S8IK9liN+76Cxkz0tOC4W1NcLiC7MFn1/1wOzZlP9g8VkubYdE
	 CqyxJJqfdR4Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96BDC109E52B
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 01:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177448949360.22205.11691343943917636005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0beea1e8f520f91f9de306bba146a8c19223cf184b97f1cb630ba0c42cc76256
Date: Thu, 26 Mar 2026 01:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774489493
