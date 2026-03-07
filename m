Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3918A254B03
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772887494; cv=none; b=dX1RJUXapQGnNumCnVXQkFOGK7HrXixxv4WOX6XveQr5sUT52cVOEiqMW1Ylvapm9yb73QUXMXcVO7Bssgq4e0wZwSr2qYT00ByyeJdJN47pOJmSvUaKlQuR4fH1p2gNp5wNcbpv8zF7kEVBj2eZaQEGFtiuai0jVHEdGuZfve4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772887494; c=relaxed/simple;
	bh=rIgUfhDyLyIE8smBE0OP/YDu9If/0MYpDGP2ZMAqjcE=;
	h=To:Subject:From:Message-Id:Date; b=S/Q13WtvpSUiY3yPZqnGBBfBXhJzOnWMBzxJzQmAUg7Y3JO41BBGN8EY4GGWJ/wGs801WasHQ6/hQHhgUiL8e8fDn5Kjdcx0K/8oVkjXs4Dur5op9bRAjceYqbkzOeMds6EV7BQTOwmqw3t8cqe/OIanp3WU0mt2zNNxge4kTxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMhDRXRE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMhDRXRE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0554C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772887493;
	bh=rIgUfhDyLyIE8smBE0OP/YDu9If/0MYpDGP2ZMAqjcE=;
	h=To:Subject:From:Date:From;
	b=RMhDRXREl12hkGn/aZ2RDBAyGhEU0tYYW2aCj3waKvoQr+jIiHnz86z8Qsovg9C+o
	 KzwfCWnWiGYkZnx+KeFLSsCF0yykuU2uj6wXsHGYjLMICYUYHrJmt/wqUJSeA9R+VT
	 56s1r56USUkYLiSYC5FdFUg81UHvZRi8sJhra7JOUvUqbGHM+hKGa7TvMpsdMI5XLu
	 FxhcVRTGYkHuPx1JDs//hcfgU8rr8NwWbnOKFdZNbADXAOKIztCJgc31Ho6jvxFcxv
	 2yk/fUzku8k0NOZybLpj33GYdRIwXhEaAC0AkK70k+UAlJrdBFQ1bPS2xbxi6QW5JS
	 9w4elR+BQZxBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE31FC9EF9
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 12:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177288749363.30413.17372352894904030556.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c3a35719904033418112891bf83165047f4659095c223a538fbdae3b584dde
Date: Sat, 07 Mar 2026 12:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772887493
