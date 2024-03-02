Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028E66FB2
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709344097; cv=none; b=Cumw1gG7aboHdrvzjGFDY74NIM4HnbsFVqu8uHgVT68B/4VcOUZvMQ9ATCKV3hOCRf0QnyZ9hJ1ncrvxvwfaju+xOQ8pjqsnMyem1K9EM2rOBrj6eTrRuhdOGtoNVx/skDsRWxB+rXUrkDvfSYsGGSXngOsPsZqpKpV9xZL8Cpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709344097; c=relaxed/simple;
	bh=5zlqt4QWgXoonTALMinS5kzhrhYG9LxDJsGOxFt6S24=;
	h=To:Subject:From:Message-Id:Date; b=aihq2V5MPIiF1D1EUArTEmIk2NBVqmRJUk5uId09TdMiIkw0XYWReti50pM1KJ/6us8+w7ysJ+e0VRxnlQ2W4KfpgrlHCLhwqHqSRZHhyFYzgT/1anN69euyTpb9ocGxiY++G2dFEirzXB1zbnL9l/b78PTzUSuE7+4dkUOjVHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MxNId7LG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MxNId7LG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74BE2C433F1
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709344096;
	bh=5zlqt4QWgXoonTALMinS5kzhrhYG9LxDJsGOxFt6S24=;
	h=To:Subject:From:Date:From;
	b=MxNId7LGyjW+Nj8/fDjdH+30pEmNB+dKz2DsjLtQKSxQF32jYGmY6B4bpbSTyQenR
	 5Bdo36U8xEGg4Uf3WTU9jgpY4vlc/YBKUKTUp9A+cM6MvtniiLy4wWdyTNdoXOuJpo
	 16lLMt1Dsd4M0lhb5heZDwddZwz6rFhOXS3RzZirIPr1/57ZjG+cSq3ezLDK4Mwanh
	 DQEO46bPbkxIm0+cLJMoE3GIt3qQImSO2AyY7+kJsnRqmtUBFOntLjU20/cDgMU83B
	 Ti9hClRBk0AGDUoJY7DPp9b5RXBwsmaTuWCD5Enbn60wI1TdDKQiYH+EsbNBUK8b8h
	 QwbVtGZv3KrfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DAD4C5475B
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 01:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170934409636.14160.327540498208697725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ef03325e71e2447eb7bdd0beeda4dd5debc5c47804a91745a214c20a85d187
Date: Sat, 02 Mar 2024 01:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709344096
