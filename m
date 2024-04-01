Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09D8833F6
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 03:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711942697; cv=none; b=k5ypDZH/bbPz4Nlfee1ZFhTK3miIQXiTkJE3HTrS1iGnb86f1ulH5K8/gxI/mtvZHaMLjZ/cnEKdk6xk6V+mbDswi4OE46ctI8hTOEiPjzlkLo1PA4HWivigAJcw5DZhV8GQqEB6/uJTYY1I7jt6dMO+rgmriNH5Yn5pFydt/qU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711942697; c=relaxed/simple;
	bh=Lo+5Vf57g5QktMK/E+ybIdcgLqbiiE73BiGL7T1Wqtk=;
	h=To:Subject:From:Message-Id:Date; b=QK9ELQuLXhgwgzoBCK2KfG5ZenKC1b6evS+/D0+2T0xxl246Ssen6eyQd8HWSbBoQTjiEcvO912O71wXYzt3k0lGqf0hVKcfAqOQ/JJI4K9Tg7kpvZyKKDfJ93lPagm43iWSWHIRGqiFCwzflqwWPeCdpWGztCO1M4I1p8E0qrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rrz+RFid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rrz+RFid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81FACC433C7
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 03:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711942696;
	bh=Lo+5Vf57g5QktMK/E+ybIdcgLqbiiE73BiGL7T1Wqtk=;
	h=To:Subject:From:Date:From;
	b=Rrz+RFidXyJ5tq+2jJk9xFujWHZhSsqDqYxMXKqyorSw82rFsR/WqXNqOst1rsRxL
	 IsU+op91S3/kW9sqATy1M844fne+CnMf1tR+2FZczvUG8aXIU3DnMaZ+ZXPfgm5eRU
	 5RfqK1xEpdiPngg4lJIGW6/usdCtgykBJvIyPnt0YWGRZTBdr5FXVz5b2nyd+2JaW5
	 d84uKHAe+Agf2fSzJBrA6lYoqMbq7SZxOAbldGtFx80pIor8F14TdlmYcOJ4NvpPx2
	 onQLUf8CcpgIhFCaylI7CqivBHfK4o3hS+9zODht8GeD90jCIK+zAx66iVQ7AzbV8I
	 pcZY/O8iLKegQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6B36CCD128A
	for <ddprobe@lists.linux.dev>; Mon,  1 Apr 2024 03:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171194269640.12253.8148290940009467810.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fc7e95537c9500ae2e74e9b1c3791f8fd3990d74ecbb4f0ddb7e89ba8541343
Date: Mon, 01 Apr 2024 03:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711942696
