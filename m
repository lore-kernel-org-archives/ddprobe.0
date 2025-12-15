Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AEC32D7E6
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765834974; cv=none; b=T/ss2z/b/TJJSuQ6hUDPzZgmtcDZst57qe8DheIcT7KdGLzHjrOVg7zZRDj05ik1J8chFdY+31qfTtHYS2q4qF4SYTWuJgfOxQduVv/yofuFar0nC1SJKMXLayI60IEUksHmQpYtXjuB6d/9hH9tW3Kyuj2bzuiayO/ViZqREdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765834974; c=relaxed/simple;
	bh=XHg0BGCUxuuo0lWlE0GzBgj0w5pw87morfVVoMCpM1E=;
	h=To:Subject:From:Message-Id:Date; b=fp5CZNvEvKawCUZOx2J0MqRCu03jjCZXIgrIth5YZ4FgdLhtV/3iw88hh4Db8yZsgbOYtCWPfOjvtgorpZtxbe+a6yN8osFbhH6Tjtsu7mbADh3RFNUgq+E1Xa1vb9zD0OGREFf9HHhiIxSShBsxgl9/Wm17epYjkiM9yrKg3NU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iC7+1Q+b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iC7+1Q+b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CEBC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765834973;
	bh=XHg0BGCUxuuo0lWlE0GzBgj0w5pw87morfVVoMCpM1E=;
	h=To:Subject:From:Date:From;
	b=iC7+1Q+bn7i1+j1+daHrBi/p/uffQVUv7LYMIcQrFVU9hcT0FvyzQ3uNyg2dUmUG/
	 64uJhdFP/6x8539Kzzjoymk2RERWKTqkBop5elq6KdlIG2uEj6Z4qlPW8OvtZvmKTK
	 ZhfhuMKfEwVsFCiF4UId1/CiOfYRZYLN65eJOdkuIiw8a39pZoEEx/8WkuHgUUL+9U
	 P17vioFAqdaLZJWc6fUYgLper5SAl2mwjlL1p33NF+vEspHeiLKsCnyrYwi3n4aLcb
	 8nP0QWtw7M0XFT6JVheQM51qDUE2xSWZAJ2NsU5UQIcObHS77M8CrMlcqgkxEDINRl
	 2+oBhMXqxXlzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92193D5B871
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 21:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176583497358.28780.6819958928025392603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51a70836c1a21b498221bd4442b63d73184d737ae395a3322515f9a50efc1e8f
Date: Mon, 15 Dec 2025 21:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765834973
