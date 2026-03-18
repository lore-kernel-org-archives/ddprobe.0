Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163F631353B
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773840894; cv=none; b=fwjP9h4QlKMaIO3dB7idP6iWlYKHRZWUhH2OzoJ4rUEV9Uqb3uHj0ssFIKkc3XA3LonEqgK3zopnkmZxbHPKa+KCK/bJFHUMj/xzWJctnso4UZOcoO1yMuicHwulx6WLgFzD1oKmShfmSVJkFyX8kwdY4DJPkuMjsLXX5Ey6JUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773840894; c=relaxed/simple;
	bh=/x7mQBINHjntbRmNLmpxztDrJKI/81GxeKY21hFygAg=;
	h=To:Subject:From:Message-Id:Date; b=dXrzgoCCqQtgZmm1cRYbuBn/cyErUaAzWI/zU7GYUqKrIXU2ACHwzJ/27rsE0poM27OYQt9VliBqX7F+rGj7vlnIsE/wAWPh2zMQ+cVIcMkOA/L249Xov3QeO3jsiCey6nVT7yeLTUoVkoRHjkYu/0TNH+uklhZLM0ZSqKUpvRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHFFvqhj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHFFvqhj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A108AC19421
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773840893;
	bh=/x7mQBINHjntbRmNLmpxztDrJKI/81GxeKY21hFygAg=;
	h=To:Subject:From:Date:From;
	b=nHFFvqhjlH7rqGVmnpA/0srvJdbOXSiqQuZd3CNwdTyqBHKqSu27xyIKhC4bwc4UH
	 7hU5Vrqy4Hr+ADyFVcYFEmJmwt3knQJf4SbKKKmKPBhBWRXvQk+2ubkwWt4CJAzLEz
	 HxJQVGQrXza2PntEf0+K5FuPqiI+ONu039OT+P4YKW/PvKTHBNV6D+PNeWHAK3eJ9A
	 sxfjRgvXBO6G5LaTbFmBIINb+i1KvK4PeKqZmHVKmZc/rj69tiFEbjOZvFMjvYGSSW
	 GG9lmtA44cn91c2MQhqDPsImMyIXCIaVKZFy3tSB1edMiUyJfTBuVUHW9b+h8mi2j1
	 YzjmI86cU4W/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9022BFCD0C4
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384089358.22226.4940912802815829656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b228a208138621a9d33c45b171b7141c24952744fc7db2670d4baca1be47ae40
Date: Wed, 18 Mar 2026 13:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773840893
