Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180F1168497
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730040354; cv=none; b=WSrDTviXc/Tz0wsA86eWzAIlK8n72MU9jeSxfaHiUk3s7yjUVW4BXs5dGvrYW3zW3JEOntQJojkt3qtAIiTnJ75BS+9TRwA43HsTuuf+Tff0UCYE/VGd5d2zyBJPsDooC6UpfMFk9es1z5cmq67UhLDcG2VDj/kcbzeuHNIfl4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730040354; c=relaxed/simple;
	bh=0ntU9S0xgYI7bbntOrQZp7vWOgPXIEK40nrIE0rsjfo=;
	h=To:Subject:From:Message-Id:Date; b=SELRLtc0FR/wP4k78Mkgm/pjeEqPS/X0gp7DM3ngeYIefmPy16J9K+GmxgIUZmSv4fpz2KGBotuJGmla5LlU/xIl0AGylatwIoi3x0k2GON2TBElDALNw33YDQ2eJEqXo9tQQv+f4bhWdPCWlhcznZNzUmQ0YO1sDkE0t8e/EG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9epA3zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9epA3zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABD41C4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730040353;
	bh=0ntU9S0xgYI7bbntOrQZp7vWOgPXIEK40nrIE0rsjfo=;
	h=To:Subject:From:Date:From;
	b=S9epA3zkb0y4wMDUp69gP0oT4EYkm6jc9TM4CPEZge2znDyYnajilCUCW2jmcGwLt
	 Xm+4MYwFgf2iLLzESb0VKMWqvXM+FzKaTHmWja5LaGsikFQc+VYdgSBTJDVVNdw6r2
	 CrapoER57mItqrlXs7mxGJ6F4BOLC2jqaTwcGWABe4PcLDGiXuiDpN7Yq0b0Gd+Yz9
	 8oIqE1VZupFqBxqwPE9y8n7XbPwRVtpaLmGs+jsUN/qJDZ4xLLW1qYgnirrZyxnY5w
	 HYZXd8DAx6Wt4YdYyy8kHUwNNBzaZQ93aiWKXVS9wf1kElpHyec85WLT+AVBnjPCcc
	 ZJ2qkOXZ52xDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97030D13569
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173004035360.20847.17310923928388859416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 799279b868f52566933ea56e03cbd58991f4c26f6f277ef1c96b66f45644bf14
Date: Sun, 27 Oct 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730040353
