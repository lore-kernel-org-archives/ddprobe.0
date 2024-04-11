Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDDC82EAE5
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712825896; cv=none; b=p2lKvYc9fjxxcYNuOor4A8X/uR8RPX1hYggi3PQ8RtIh6lsP6hLqb1+dSCO78bFry5ECXvvARjbIx6kX4lTExKAUZQjWhbY+TYTZtO76HfvDK25Pq2OJVkgDUzz0jf7tgVqoSguPNdr0cDorpL8dcIOCj4pQE2wzWy6o3E6NbT4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712825896; c=relaxed/simple;
	bh=ecHn4KOkT1V2rbglMWIVadlixuvZ1Bj1o6taf+myQTk=;
	h=To:Subject:From:Message-Id:Date; b=kN3BWbGARl7sPTnXI9QVcEPYJyrModPVW1HV/T+I8tIQpKCL4KpHOCWcMqsXz/+lFoMNDDlMyTFbnhrYnoy/NIMAQY6bkgjXuEBwkgtJgzXguo7677NnOZPcE/wMdROkYI1NvzVptocR7VSi4UZiPrrHZqI834hSd6xIxXrCfwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GdXQgzYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GdXQgzYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD07C433F1
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712825896;
	bh=ecHn4KOkT1V2rbglMWIVadlixuvZ1Bj1o6taf+myQTk=;
	h=To:Subject:From:Date:From;
	b=GdXQgzYNTfpcRwyRAKlj80Vc1B2Zsv8jtO9/b1t41gIiS1uEM1WQS36JU+JRjEZf0
	 /5/JYlgNJHytFHzU7RmijkxU460N8gqAnZEuVGfIvUY61wcRrO0iZroDQG+U5Nb7Oc
	 Tf79DPUwWjyzrybAxLAyYeuALUMW9FkYMFpnk9bukN8z3YGFQTrsTKYXGogmmU8FB7
	 2cQ3+wZFBnEn8TE+Ic5lSiZHQ4ZwJ9vBELZTXEqlfw0yvDBeoo8mluPfuVm6f5rytt
	 2KHZAopSF/EN/JMPxabcqOMYqVB7YcsP65ZNU7/uuX+Jz6pDY0k6jvC4xrtGdiO5Mq
	 qPvWzFM2dQPwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA80CD1284
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171282589638.22834.2568465202333316272.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6650ca7c28155634bb27ed95ac06dffe9b1e45057d14798199954fc989f585b
Date: Thu, 11 Apr 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712825896
