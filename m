Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C111F2BE7D6
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746483593; cv=none; b=MLcOvvRhqhMnvW/5XYqu/QZ9riWJPQjpfRFDUXvLq8B0Q5AhSSrR8YJy6uOnAQdFoetbC0TrG0jzWUqa2L0eKgm5exIdlN4/Ni++POzVQT7FdcThe5ullTsG1Lh+zgDhvV4KQuRLeCf7WaV+W8JssBmIHV0VttY/ADMPvGnakFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746483593; c=relaxed/simple;
	bh=FDMyc2/s+iBCB5B6WnQi1kZC0J8aokmduM9WYYf+mJA=;
	h=To:Subject:From:Message-Id:Date; b=E+m8c9RWFGZquhj51m5URDOWxfe4eB6Xh3p0Ap54q0ZOc7p6ZdBd2nOJdyy31I9DrKCcr3ChfaeNbsI1TNWrFuWlhF8UhFYhwve2S/uBgwL7kb2HPwNdlz5ibOqMKaajagbBM2L8F2WWYOFkWSDntM4bJ93OpXppngTe+6VeGYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjcDrugv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjcDrugv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3139C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746483593;
	bh=FDMyc2/s+iBCB5B6WnQi1kZC0J8aokmduM9WYYf+mJA=;
	h=To:Subject:From:Date:From;
	b=sjcDrugvwQfDLfFuyDAMEtb+GtBZDY2eSOOsfIzipiKosU/UTFI/Ah0n3EX5Qg+Rn
	 Djtq0x1oWxiW4O7WiQH/J5E7cuTEILttq0xhU9QszHrf92BfKnNtHLTv7LUJOeVY3y
	 Ji3b0Bh4gOHrz3g6eHL1D0wS08EC3VyrYNhNwRzcgE7KFc7wOjm6bprBzv7Slwpmg5
	 BNp8UmttmZnXGwcv4qev9cuxV3K2K1NURQrmx561AAvTw8eLt/0PxXDLrLo0+G/bqJ
	 6NWfQ6hr2XfDO9JrXQv+gl14baczO55oHoj9scds93NrCMysoXgPF1whpQ7W560LLu
	 FmqUEEy9j4NaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90806C3ABB9
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174648359358.23749.17281886358541495508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a25870c6185182bb632c387d1ecbb34a7665475c96c711434e9343039926edc4
Date: Mon, 05 May 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746483593
