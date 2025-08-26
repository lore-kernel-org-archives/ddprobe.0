Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D21631FCF7C
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756213193; cv=none; b=qsSoKQOmDfmKXq8c3d02VBwOwfH8kAGc4pV0ndEKEkcr62jJKFmEqML++2/O+9Kof9PADkoGlzxhVV6bk/jQaPt3j1Plytwm4X8noy4E2FWZBNd2kZMPpobvBmM2XxDOLn7BHUEyfGcaWVsWZAYnMTv6irlo3nmZaHm+ZsEx9jE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756213193; c=relaxed/simple;
	bh=wQhYNpjUPyApHsu/VBlbFUD42V+9ybqWuLjk5tjh3LA=;
	h=To:Subject:From:Message-Id:Date; b=b7TjAN0H4ER3ZmoYiXhCazN+D77LBEP2GyxEIeDx2paTTeZu7sEFbc9Fy7RbFjOefZ37REfr1Jb6rjgnEI2foHXOpGpcQaRAtzne7EBP8gKTmuZ7Uz0HVvdF3MJkFw/PhxMtMoZvsTFWIVo7fwAvu63E0M6XAPdTwdDnr4E/vT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s8SoLzUd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s8SoLzUd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F274C4CEF4
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756213193;
	bh=wQhYNpjUPyApHsu/VBlbFUD42V+9ybqWuLjk5tjh3LA=;
	h=To:Subject:From:Date:From;
	b=s8SoLzUdVnAWtVOQE6ZTakOZFfCRQ8qiriyhnuZrPVOrrCYpFEiRcROcWvAwSPKdg
	 2fwr1Y9gOgRQO4ALdJ8Hs8PIGPdoA1fHEQuPTuVsSV5oGK2fj1P1Jm1VOBpCLPAtQO
	 e9EJQ+wza1FhRh0G3PaWZsjOIjC/senkr9Kfw9gRIAFxq6YxzBZzKQeMskTbVROBdC
	 GN9YCdOdVK5GJzAyujMJHr00iAa1ZLwfKIGYwdsD4WEAk+Hajj1MOfVgm5whpfRuIO
	 acsC6MM1uJTgoVYgQycMoUf++MyRmHJToNQOo8hj36OZPv+HpYLngJNYKTdFlVW7ji
	 PwKle6jvqjDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFA9CA0FE7
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621319358.9618.9836267606041682925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1680ab2252af75860c8bd95d74b96766ffa169af7bbc720a150bd5457366a2b
Date: Tue, 26 Aug 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756213193
