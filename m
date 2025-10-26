Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242CE47A6B
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761505794; cv=none; b=EdaOeI/kB8cHS4Ctw739zRtXmCSL8LhZw/Y4lRNYPVRmuJC1SwJ6OhG/D6bQIFgk4RlOPXWYP+viqHnQCPybfKLGXXg7njUrMDsVuGUhC/msrrGlzQ/ZBp/Yh5E71S7yLEWEJuLu8GOdS9UpH9UYUXigF/L+383LPt/n7hjAWDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761505794; c=relaxed/simple;
	bh=qaZtCfjKFBAO41bwjhhmJHoqxGV+JbVG3Yf6FRkfiIU=;
	h=To:Subject:From:Message-Id:Date; b=nRg4Pi0aLYV+m3RlWaXBJhwIoQTHlIb7lRv/ReRDaeaJkyrwPbTh3KkkLneoOwEJV4TrIEtfP6pk+NnMNRL6Fb3fx+whIvETGw0BzOgjqXY7QcCABDKhd+wooqSLIgXSri+9ck04qUG1xxpEQITxjPSFOL5ibUc+PIQp/c2TWeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NaYf9f1R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NaYf9f1R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EECC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761505793;
	bh=qaZtCfjKFBAO41bwjhhmJHoqxGV+JbVG3Yf6FRkfiIU=;
	h=To:Subject:From:Date:From;
	b=NaYf9f1RAcy16E29t6IEo4o0tx6tPyS8YI4w/oOi+fE5DtedZLjX6LposfiUVBcSs
	 B55G0umLVkjGGk298zIGY3ohMFulHWO/k1OnFjfXHFRmHO0mq8o3KSHsIXUqQ3Iq5Y
	 kMzJHNVj1p8HwwHqKWeXqlgEDiKrL7Dd+a7SVNoqKw3HViORX9eQ9J9zUJth6pgsmY
	 7kikS0cIJX+oqId0u4dj09TIFQ9QPJCOYWhS7MTss+V53VGLeaN8eQ3EgeQHIBKZaS
	 jdWoY80S0c08JBcO1fnz9bzgqGuS1MRpe1X4HLJVC80sOZPgfqBjYuy86usPlZzNtJ
	 t9hmb86u+J0qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A7ACCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150579357.20112.836619164348454896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c67efacd7644c070559457d59f954251e19109c31157771f3df474a106db544
Date: Sun, 26 Oct 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761505793
