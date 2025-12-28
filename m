Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3971617D2
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766880834; cv=none; b=hbEmIa4XfME1MONeLJiGndOmsIBOrNNZ/WRHU7CfEdFZ+i8vJgXaapfBAaWcGjXBwXcqAXB4hBNWyed885jMzL8JyOwFkHuQO5YhYIOvGE8Cju2LuDqI4I9q+TKM2+fjVUAU1oFu7J1ITT8ZRFNi8qkboVZlQDNXil9jDo+0uxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766880834; c=relaxed/simple;
	bh=3yTOXv3Hq08rKBWWnhbYIREJk836Xs0TnwJtJEKpZfE=;
	h=To:Subject:From:Message-Id:Date; b=M3uqpuTYYP2Idga88hcswGbr8Et4bkrPRGpnILchs1wq8vQCL/sdfTyNUYYNQBVkJ+GitknY+/Ky0WSJJJP9D7hsRw3mdKWdcL2pW84Df/Lpi33fS7PDXvVNDd9HIpYqwhdC+fsZp+zM4xXNss3+AJb5QZAUKTUwYuccT4M+rvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0/q8BWb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0/q8BWb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E31C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766880833;
	bh=3yTOXv3Hq08rKBWWnhbYIREJk836Xs0TnwJtJEKpZfE=;
	h=To:Subject:From:Date:From;
	b=b0/q8BWbK2JArw0iin9wZ1PsGxh5sjiH3JOUd8wVPQyZi9PdfgvYY+8GeCNqN7YOk
	 i4UVmAX2dtzn600wuYIS234++DzfGF7zwU+3NUpuBw2MQVh2evk2t7DkxA7EZEwjJS
	 wcHGadkrzSdIyaRPb8weYtRToVMLNcYqpzuauOKkYbtSrQpm03v1re8M7tPT2AVyFP
	 piF6IEo6DGPSZ1V8eREFuappiIfIlnFw2pQWTMMmQs9Cp5LgBBQoEBZj9dFAgF7S52
	 v1FIhV0REqagZghCo4J/UPJMer5XRpjjC4gyYlfDq72FTt9sCkNQYLoEektB/uqMv9
	 73sNIq3adJcFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A2E92724
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176688083358.9848.6362853451291386434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f382ebd7d4493439ffe67829ad283b845b618770c3cf7009a36355aacbdbfb1d
Date: Sun, 28 Dec 2025 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766880833
