Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74852139B
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717202063; cv=none; b=l8Ts0wESeMkdqxeIht8eDBzOLWHVfl7BzxIU4hc4J0jUWFOkJdT3PvGiPol/629mvyQpmqoNRLtKOKKxjxKmOepQxD/N715pbCYuhau6yjvHsaEi5qmjA1O/Y8ifNdWE7TZeQXyRfGYUhq5ZgUx4/n/luBng+/lTtnoSQ0fWH5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717202063; c=relaxed/simple;
	bh=/Gi3H0uS9ohvX8jhKwJ9tA3rVBnJhXaWKJMjbS4wD0w=;
	h=To:Subject:From:Message-Id:Date; b=OlBGbo6Ng5AV9eWG4aD7be+J7Ns3VNSpnQVvM3n+sTRxq3DfnGnFDZ9DvrHAVZwFyW3Ccjzyfipw124h80RxITQ0RIo9onKD2vqXkd8Gy2rOFVlxaIpuv6oPA9704Vj4iCol9ZVh4Dpj648Q9v2x9QNI687g9CrtS8DEJtHQHh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrOtqdGs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrOtqdGs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCA28C116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717202062;
	bh=/Gi3H0uS9ohvX8jhKwJ9tA3rVBnJhXaWKJMjbS4wD0w=;
	h=To:Subject:From:Date:From;
	b=nrOtqdGsHXEGIgXjN98l/H+deXvzDgBtuYSDP0B7Bpilugyja8q/UsufH08oj4ELb
	 HmjT9NYzeOR2Cq1UbcEfUGTTWuwsGOw4NSTF6owqx28FbpN9N9Qh3ak7tYwcLxT2YU
	 wlkMQs8FbwFgI4IIwws/zVd5yA/XwgxwbC5GabT/jnwJ6IuotjkGWebqMw3bpotML8
	 3z9oUMmrJ8ivNMFg1FKTBjn57Gv/SJqXdie0OyEbLwP1cCXDlclMxl+mW2WaUe4lGZ
	 zo/mj8modtxtiv2SwRmY2Ws3C9HQets2tb2Fgh0dwpHbdcZo/xDEcXKwWo2NUd7IK6
	 4OvO0wgVTeeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C95E5C25B75
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 00:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171720206277.16378.5408448772235956520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8aea8ceab45cb2dc9a039a1263e7609388241e1312dea7d52ceb23a48b274736
Date: Sat, 01 Jun 2024 00:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717202062
