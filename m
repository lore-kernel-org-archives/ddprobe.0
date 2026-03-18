Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2181F330647
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773854094; cv=none; b=XVR5zzDk/E5GDJEJn7XNgC+nJ4MXA7xtoQ7Y7r6QTaMD33LJJvzWDCY3J7KrkAec2UT1TEE/Jp1zsw8iD0jV8eMIuM97tmd0KliVgP2cYPurb5+RQWk//zc9mQ9uF59IK6pzGe+fppWYIQAEEhEZVT2y3bg6HWntZhqdFgWjVzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773854094; c=relaxed/simple;
	bh=TtCzPjEc00/3lS8UcHUmAmS4KF8VCdTi8pD0aHtXhWY=;
	h=To:Subject:From:Message-Id:Date; b=Np+MUTt8uJgV4n92W4FK6K8fGnNR6QzgazAdNlRwbhUTdwAEthE76FBZL+iZxZwq3JxRurnO7KJ77CJLv42V0OA9eMa7ybdLSpVq3rdh8Ej46s5wWC+SWB7jr8Ov2+KonDrIo3AkJ2Y25fQDq1M1gDYvNVM6EUZDbZ4KzmfOhKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDue+1xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDue+1xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCCAC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773854093;
	bh=TtCzPjEc00/3lS8UcHUmAmS4KF8VCdTi8pD0aHtXhWY=;
	h=To:Subject:From:Date:From;
	b=QDue+1xljlJ/1QoQLeQAGp44OGM5bOD1z2VlCahH8Ug4wact14F3ffwVFST6JImgp
	 2+moktxvHpbiwm5hD5my4wt/4Dz5y7d1hZFNsNuILK2Jk+avQF1fTZ1N3qiolgcbtG
	 9RvkqjHDAP1+mlkdG9F3uJlZibHT6UBOs1LnC7WWemUGmDU3kZOd7xkFoVZCEfL0bm
	 cis/2ptwP+2npFtbonhBtKwrMe8+gsAVVrqgzy4ZUTivhiMwYqYahEaRYBVTe2+9fX
	 saemvYS2SnNpojhndKPT02brQx2AApXazqbE76tu/xWvu6rI624dS7DDjB3zJmWL3Z
	 4ydBvZoDuqXtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4B910775E4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177385409357.17885.2231889187467211085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de503d159d3d92754215fbe59a8e9d3662a66bfbcf7a7b3d1078f3e546362a49
Date: Wed, 18 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773854093
