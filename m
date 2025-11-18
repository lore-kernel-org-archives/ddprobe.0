Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CA212550DD
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763437314; cv=none; b=AnxLcGB2hb5Hz4G+aaJfQs93r/hn2dSZiCqf8eAI0VDhUJ9d9hgz+CU7XVAU59lHVNAAKVipzqSmYwIMAXnKGQBjRxwToFpqEabDaf7dyuq8bnnnIRN5QrYG2+gHGVLh3zrT3c3MH8ZGIQNp0lyrMC1HCmD1Sq0/VCQ89B0HUUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763437314; c=relaxed/simple;
	bh=+h14Im/h+5eRjVUJ9fwzBGo0iK7VGxDcrgma/ftpEVU=;
	h=To:Subject:From:Message-Id:Date; b=o0WK7/d4Wm+ipy1g396KUHWTYlrFiyuhAujLcRshEJBKkp+98agsqtbjhUxmgj4jmLiMvnu8YMXGtvY2O0SqQmYDytJYpbP7AUFOw1/LfZP79bQQbUCkA9I9SUrhYw1jy+Tby3J2jUyoWr+P3kM2SYt3e4i6GwD2NgwNTYgwYmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SKkHJT+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SKkHJT+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF1C8C16AAE
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763437313;
	bh=+h14Im/h+5eRjVUJ9fwzBGo0iK7VGxDcrgma/ftpEVU=;
	h=To:Subject:From:Date:From;
	b=SKkHJT+1DbcP2xygFVu1EdPYxBIWGc9r+0ysyacPE2imdq5MOJsvNiqBi/30aHVzE
	 TskaeCLhXLm+eVOyiOaEmOhkZp70agRlb34CVQSTir9Grm4qQmeWWa/0y3CYFyJvBL
	 6onzBYd7TWd9WAOdl0Many5jmHCadSU7ZqY4jH6UJB0ttdMUH1j/qW8w78Gl6GrFeM
	 EYlX0GvwoDfZfrez56KSQnnxJvvTqXnZ0Cj6s12mKmhiVmJMJ9fOHmU+es2NZQEKRU
	 L+9EdbrIdRudHJYH8/1oL8fWtki8kGE0AvTnBMc1cv6p54bMMw81oBHWAZb2MaCzfX
	 LlZXhvlXoboSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90252CCD19A
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 03:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176343731358.1142.2839584257502137676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57628cc94d8d16ff57ed547fda610ea037671a5be0c7c99c71170f55e498427c
Date: Tue, 18 Nov 2025 03:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763437313
