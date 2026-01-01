Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22F313A1E67
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767299034; cv=none; b=q1X2utobrL91UXnru3HDJTtHeqiJF7uZNeWJ6se9AVn3je1bpLwQ/t2X+61UIdOgbRvFHjeBZsvurADNQlC1vhkQbeaXThTElc8hdQU2A0m/Y2IkZ7QSZl6IpbPtteCC+9Be0va7pE6C6uM5DrhHYSl/AzWDFuYlxL3NDkTtWIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767299034; c=relaxed/simple;
	bh=eQUVmXmK1t+SI9jxVXBAO10FLtgBeWRX7t/vEPosL2I=;
	h=To:Subject:From:Message-Id:Date; b=f4j3tehCxncPHhauhxHPWO+muvaLSYa3SKa7ykN/6wWibZXwgdbAZolZxjYnEwxOhW3I3yT5Juu+HeyCwuB+OaEE/ZTR517qh2Gwpz0VlyhE7nLU8UmqzPz26HqeKxTAHHS6TJ647r9KiGVAwS9a5YSAN+Bd2JOrgx1rP9YhMs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XnmXNI8Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XnmXNI8Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7056C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767299033;
	bh=eQUVmXmK1t+SI9jxVXBAO10FLtgBeWRX7t/vEPosL2I=;
	h=To:Subject:From:Date:From;
	b=XnmXNI8YUucmv7nYbv/JZOmozwk3uoI9hM1UpnUIaqd8MX+S4pelfAgmo0GBVjWX1
	 T7QuJdh6R9J6cXpqCezrCHV9hD6RrCCpQ+LquSoPk4j0UbAvSswj4UTs0Ekd7z3/4c
	 4PY4zQpd3bPBvslhIw4CM4XPKhY/Bn8yQcd+fj8rRH+nw5hyCniukvuXeqTzQFe3nA
	 8pWOsKJ14Lg3RCAZv+SJA43TUDeLPRMJ9X80g21PKsZsc7K7ybSlq8DZ1M3QftgJra
	 aAS9JTpx7E8dXzmnFh759zig+VXLuKXWWcJXYgj5AFreYtjUY9bPxhDz6AeC4REeZt
	 c+1Dnyjw9khvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C5FEEE25C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729903358.2951.642593675771310685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a6d05f3e2f0beebd6327cea516bf1a3fffa66dc7aac0c272867aee83e417e83
Date: Thu, 01 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767299033
