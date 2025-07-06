Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2349335972
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751792994; cv=none; b=MQGTE6Pboq1iO/CX75ReVixiRym9tiQUGBDcRfKsxW+LEE7eje1XQfwOvgkZbS1A2GWFMccRQrKxiV8wl1cE0HW2k1qhtDPCaKTmfcOz0P5rr/XgeyZr870ENUZoxHLQER16+wZm6qzYG4qEmTDSdppUClJnZi0uRNdcR8YqoC4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751792994; c=relaxed/simple;
	bh=/Cpa8mHYKH1RyI5nUK5Lh+682CJ2ecCts3RihQWcluc=;
	h=To:Subject:From:Message-Id:Date; b=sNKXHHkaLsr+cmf/a6sI4Ew8i/NAAqzUZUzwAD/6MtG3z89TFDo9n1S/wO3F36mqAHDXnNwBo0X0oSgraLjxXXWAWdmuBBV+aXdv0nIQD9T8K1aA4G84Dpbm+yJ0y22sSktzmnC+/4Gn09+PYBDWUMuFyX0wwvbJag4x8L4gaSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U8P1pm31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U8P1pm31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7C4C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751792993;
	bh=/Cpa8mHYKH1RyI5nUK5Lh+682CJ2ecCts3RihQWcluc=;
	h=To:Subject:From:Date:From;
	b=U8P1pm31xjIBad+8gQMkQiYm8l6qaL2kfiwPcTWsInokH/XtYU5fUY5ZucM6lBL0B
	 7lQ2Z2MMJK9mj/Q56+yrikRlS4Bdq99hqeDmKmzTLTQGzUYcts2MmJ29rZ7JqDJ4kC
	 ZkjsE0eweU69VVaOZZuUogYKzc+C1PRyqrDG1KlrYJiF0yN8x/GyInAcXg5RA7f38/
	 TNzU1zU5jO50SJmHQ4b0l7FtijExy9IdRNqQQABm7pPhZETgntF78uA9wqXRqxobBx
	 Zu6pjC7KqUezAP7YH76TEEhpqGGtS/8yp6fTrtXa5IylBagwAWJtSmZ/A7DDGWNron
	 4HZKtv+LGGkiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E88BC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175179299357.13829.15708588729111994525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24e23e691d54066588e586b07184cef4f2688065e869aea2e19c702fac79642
Date: Sun, 06 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751792993
