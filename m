Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 292F11C2DB7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727808954; cv=none; b=K+q3V6Tp5IGNO0iDAKDDUHJhv75MiCPyWrpJs/d8ZC96SqXco0QaIWxufo5zfd/4dP/Q/9Nsj9p2JIMxFXfYTaED+QUYcKK4KJ9pY8QzUE5seETwLjrjRfd6cYMF3ojqHj9ghEGSXcmypy+L6L0yJ4Zjj59qKT6+TfVQ5jYN4vU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727808954; c=relaxed/simple;
	bh=iZQ3RXtXajHySxpbYy+zs+TPX/Gp/4bqtt1PHJjFXRQ=;
	h=To:Subject:From:Message-Id:Date; b=qnhNXoMJxSu3M2pUlEnT/jeC/XAMvpuFopi9za0NvxQqstlG4I7EQCMOY5fQmuW+mGCqahEQ3byDZCVPUaU+IihsWb5SNXPHdjt/a2w2I66Gi3FM8rqTyJqXvh3i04D24UIPcBML+RnRYH7F6iBqAd3PGIRVk1YgJyt65yYp9Vs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ACr/G4WA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ACr/G4WA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF213C4CEC6
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727808953;
	bh=iZQ3RXtXajHySxpbYy+zs+TPX/Gp/4bqtt1PHJjFXRQ=;
	h=To:Subject:From:Date:From;
	b=ACr/G4WA0+mwr0m5oW7uJx+3zjl9Bzik+x7kw7WhMfFsmFssvniizLpYEgF5yMR7r
	 TR3Y86WMI6YXXqwnkJpNwNLySC4HaKRo7+2HBEjuRv2cdRDWsiXlFHFjRdaXYwNcS6
	 j9bobuz9aJc3ptDsZ/4qIhdznWJlIqv8EEGIjQuEuLqcdo72BLLRCqGgZFyTW1jFSJ
	 3qUkUn1z+jhEaGaHnRMa26IJY/UAGKIqcnjSbEnVszku0sKQ1Td1Y7r3HRsVYBLDWP
	 IMFrt0+F3ZjG1wuS75UmOoRiWIc5Oaq1FiQMM2OTXssxOiIIvwCoAosxE86wo8/jkO
	 XBpi685tmtUCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97B15CEACFA
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780895361.32314.15002767715485373272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a827aac5042d9f3a605b534e6bec983f7bb22f695ed0abec9917048c81a4c79
Date: Tue, 01 Oct 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727808953
