Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40583279DC8
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772463294; cv=none; b=UuvQXzT0qFvZL0JfUFV9eQYuEzWK14N8bGaNPEHEoZK/8+2/CmV/2zQsA6Yb0JnQ2j85PAI1+p9UXko+EDLkqpQH3CDEaao1xY0UBn9KZNkB5LJ/WxKGVlKNS6IFWBYFgdgxp3fbF9uZQFxKrF7PsrxjCFYHXnc2Wt8qQojB20A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772463294; c=relaxed/simple;
	bh=jAt8ZKRfYXi/VyYw0B+k+75fF78MlSxraA8oDATR4GU=;
	h=To:Subject:From:Message-Id:Date; b=ZcNkdNwL3tk4BYwS0pXxU+TiDnFvd8qsOHAWWVjNz05UacvKqigFZZ8O+GOJ1/ZzJnZlXAJ2otYYJs/zY3pHUS4NywIzggiLyq+VeNscZ8MKaaYfho4tDfXhmTRrk/9nJMww9ce1caRa8TWP+i00nXRwb9WqSnSAYWCPOz1Ia5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LsP+j5gl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LsP+j5gl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7A78C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772463293;
	bh=jAt8ZKRfYXi/VyYw0B+k+75fF78MlSxraA8oDATR4GU=;
	h=To:Subject:From:Date:From;
	b=LsP+j5glM14WbH3ccGOs1ok8edbE55J+3aSEbglexdsDaEhX86QR9sVxJal+KB0+e
	 Dg+wINEOWJZe6kELGYradkHwAxzdv+QyUAqZGRC8hH2l1JECMSG/U6y0qWgXnhumzC
	 XOUYNbfuH3oTg0H1HWnrT81+hVY+X5Sm9URnx4J8HRE/u538j+tZlbV8leUIkhJyAQ
	 XNhXVaCsYzlV/YulTQbalOK6e4nIm7pcFsbBXAvFl6k80ETLoORTgcbcaMBSElTTwk
	 j/s5hUSPO7vNMbqJdY4i0yepIo2aUlh3KkCInW2DRhBL3MgDgUl474laBxCi6rL+Tu
	 H6FSxgMt4w+Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1D76EA4E04
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177246329364.13549.6963121164819550402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f714defbef40d32f89e8b0675461c65760b667843aa57b1d82fd8cc8ba403278
Date: Mon, 02 Mar 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772463293
