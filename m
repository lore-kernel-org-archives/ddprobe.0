Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06CAD1F03DE
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757740794; cv=none; b=iNutLJSb0mn7RRcgm02cqScpcs0dgTCGlTW57qTJD4CwBTjtjSpIuYiXqUh+bE0XOY1FDQJFfUgqc1Hr4Z+WNuFc53hbaF3sqYTyENzVlE4SHyFbF6sqR2o7oSj2CJ/zUguFV3+jlBXoBbi39QhItMtTZ2WDvZ/7sfCDOluiC0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757740794; c=relaxed/simple;
	bh=p1XveIuDjPfGtY/uB/kdtu9aSHbPiPshAxuBNAryBgI=;
	h=To:Subject:From:Message-Id:Date; b=oLHN996wEyEbSEhsLpxMPWIIZSZ+Jaa8IvWOvQiz9bTX9xzUKpl3hK7g4qFWDwPqoWuVYv1edWuiMYOCepyML5tbJOcxzUFfdaIA8t+Iub+fFZQDcPmShHj3PFUZTqsc10ZW1A2rziTKdydSvdQt35KZOFf6HII5EDvP0rFu0Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mZTW0Zb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mZTW0Zb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A483BC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757740793;
	bh=p1XveIuDjPfGtY/uB/kdtu9aSHbPiPshAxuBNAryBgI=;
	h=To:Subject:From:Date:From;
	b=mZTW0Zb4CthbNYlnjffY/1Y5OKr4JgH95S1HTt6/ZfyJTdFO71GY1VoAjRLpZIlv1
	 2zCumgJ/nvgnivnDWeUc79el5la+Q9NvjixEemyFe7IQxzFcCut7+Vn2qY6R6CAOuq
	 eOGlOs+AVabf6w+zWAixw8ZvpBYjNTE9mkaI6FxjwphERPA9J5uDYF9BtIlZTh5k1F
	 JR9GE3PSNAe/YkIG06sJGInsxjfxj5Irjv0cm/s9Kiqt54np3w7au/3uc/ron3A+Dt
	 PFRIYXmA0SAxftAH9/6pJiAIpw1EhuV3p98t7/UIVzG0n+GKY/E20y7/x04HrMq7VS
	 LJMQJIFLS54KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924C5CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175774079357.20193.7962522869083069048.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9c59348916403e7250ae51ffa8ba120c85904515682206396c24e9b10fc57fa
Date: Sat, 13 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757740793
