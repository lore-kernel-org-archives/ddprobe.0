Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 139C5205E26
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773111894; cv=none; b=MwDtjwET9BQbrAdLpS/Qe1bML/R4pG/KYZyxnvhvFXV/zJ719UWi0suM4ru73lnoHVgNkXLPLlCK1NX5zW/KErSEICaJLNqqxYvumIoOXqi8zMLQ4Znte9pU5Bnbxdvm5JqRqiuf8t2dGIXmgjKJAmlbsZnpErBXm/a0Zlv6HQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773111894; c=relaxed/simple;
	bh=CFroHU4g4cWEbTbgNlhJKpQvT4kssClYWnhbsrIZZZk=;
	h=To:Subject:From:Message-Id:Date; b=EdHmDCE5YzB6jdqUOLpc0Zm+YLp6zE4u37ztMJf5LV22HBFcJLvCmBb7Ywk3/aRsOzHoM2XbLjYfoYDJYRS3X3lhO4fC01VD7OAMu6+SPL6z6VVE5nJqTVCcfx6pvnJq3L4ZhW8a2+iRvKM2b5aOYQHxEMD7y4wtiptann26j1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMLndY9B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMLndY9B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA21AC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773111893;
	bh=CFroHU4g4cWEbTbgNlhJKpQvT4kssClYWnhbsrIZZZk=;
	h=To:Subject:From:Date:From;
	b=WMLndY9Bme0Pl4aNwysgPbPm2yvzX2dcPvVXuZqWJaeTFOkBRT/xTaLcGN53ZA1M7
	 55TEBgzYBRlgf680515LHBCBSLqTrbhXG7ER/ywe0qk6Fg/0FVbZgnt+tLgG9pmjza
	 Y3RWRONCSvj0ob+o/iSuIcywaEZNSYDY5M7F8dOvU6Mi0bwZhpkH+iRtT5vyA9ASo0
	 g/mR6J8zWepWM/RFByl/FOCGaE7wEAug4lkyeXzNZbNOIlc1263fSFMwhaIyBKLxLj
	 dbVANo6MCUxa5s+r71KbKFlW+E+8spfpT7vaMHUYd78EFdijtfmREADuJ1JjAgpJ0f
	 7zOpmKfHZBF4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A531FCC9AD
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177311189359.12908.13074874353949421088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e734a40deae56ce0f486e38ceb9acc77348f9826684daa869c998fa1d94d3348
Date: Tue, 10 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773111893
