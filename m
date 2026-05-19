Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A92C2E091E
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779162634; cv=none; b=todZOSuWp+YKpb36F+yFNcStl4yOm5EgKmJCxgQBBbRRwlHe3+v5rshC4FB5PSuK0tPA6JBd5IZRMBwitd4ikH2vn7rMoJ5qGvDSQAfTFzXchDEYqP3m6XYzEn6TlEGKlB1+OMYhcg+Ien43hRWflxessCMHk+U2xyBBAr5EECk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779162634; c=relaxed/simple;
	bh=tHj6092NmYaf2sORTMEKhI2yG3mIO1B/HSr5hZkrVMM=;
	h=To:Subject:From:Message-Id:Date; b=PQ8QQv86qbKRkCzA7BpbK1L3r9/peAzgx5Rmt2ABDBQ46zcv2IyYv7cO3ZytaqB9UFYsbBxnTj7gSs3ueZCHN+x7tlyL+wU0RuCw2Mywwz9xfm0eXfi6ZogTq7l1YqyWHfMpgXZoXv62edoR5xmdxDhybRzD7VjVAhSLGiSyOaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EPQViKmU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EPQViKmU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9BD6C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779162633;
	bh=tHj6092NmYaf2sORTMEKhI2yG3mIO1B/HSr5hZkrVMM=;
	h=To:Subject:From:Date:From;
	b=EPQViKmUflGbj89zlqPDhc/RJ4nPaWk1sgm8XiGM0n3DYfcu2VD+r6iqC2tnP7C44
	 +7ZyjWXepTpLN62NTh1pUuH4t5432Kb8z/x+Tk7eX4d8GwlSYOGXJa3zS1Hu5n4NMQ
	 KYgog3bLZ3McOqF9qyeCI93uEZdsCTpJ8CTMknHIzFR4FyRiEMIPMtVIUlQZaCJZhL
	 o44aDlBqeT2Ba9ZCUcnULWmaCqJGsYuUSIk9X7EaSvjlxK5uw/62B5PA59spr54HJW
	 6jcXmiuYSoPpDS+icnr/D8DzEwRR1p+Be44CuICpLlhFnQ79ANguX8JQzzMJdVU38i
	 v0X8kBt+ltC5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FBECD4F3C
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177916263370.5225.1885715868598863282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2026d3cf6ca2467be05001cc4ecce76a97ea9d002dc73634cdc7331ef52a4fc
Date: Tue, 19 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779162633
