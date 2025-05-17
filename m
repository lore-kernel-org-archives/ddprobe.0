Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4163F18A6C4
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747520394; cv=none; b=oAVpDJqU2b+FpRJAvkHUOTClnRT4KHNZoO9N9qu1nP9lBhgRhg4ZcapIbODkRSDfncSb/HtYZRFqrCwhvx1El9UwpW5AdIJitdPjliEqHvZ3QqMZTI+ySLkzJdB1kkSIQUMVAsaUP9riSY6II8fLSybnE+BBvj+3OwwI8gvq8OE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747520394; c=relaxed/simple;
	bh=TJsyk+IUEqXd1JcYkIk78h5aL++5AeqJBwYuaHt/agM=;
	h=To:Subject:From:Message-Id:Date; b=mSKEr3sj3pNwzvbV5rQXaBBTuyrO0ey1qjTrElzS2mQrYJK45MBz0N4ioEodNwdPuP4gK+FiqkZ9nfQriupQp8dfpuzrQB8gaavv+XTV6locEeot0FU2G1H0XvbDPo6I3GTVRVvkaqTl6/xuRWDDgMs1/j4esEw63XOv40iRI9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=trBI7xXC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="trBI7xXC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A818CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747520393;
	bh=TJsyk+IUEqXd1JcYkIk78h5aL++5AeqJBwYuaHt/agM=;
	h=To:Subject:From:Date:From;
	b=trBI7xXCHooTo6LnXQcJkpVmGMK28kvmvN2gXz5NXfNfVlz+ZioFK75/anafhxIgf
	 2e5lHjY/WF1uWVGYA80HnA5i6CCDhWw/qFNYo98d5qkba7Jxbst5XtVUxhNUOL5Crh
	 sTagdqJYTrxAVv61TGKPpj41zymoeoEkI6HYKbkFhW5FYUR7Xowz3d1fjurg7K9FVL
	 VCMaNrNy5ydDJL3wUXjBPVDr7nZfAX3DSi7UM4QJOAh/f3sPY0EocSkEL701mFLWJm
	 GFPsv9rfHzZvw8KVyVt7rpkfLuQDUWdh9E6ZuZ5q3dcdiAYNp9zlBsn1xUED/v9eNn
	 J0MY+8JzSB+lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 936FAC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752039358.26965.8000894503634501147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4601a955cda44f24295f355a2826b3cb2db1833bb3cc497b609403d409013a63
Date: Sat, 17 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747520393
