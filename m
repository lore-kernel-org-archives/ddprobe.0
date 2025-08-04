Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7C62E36ED
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754282394; cv=none; b=TOViq3SLsjIrZTRv9W/x7iUP8dzNeddzHTQDaDc/Y5FZZlL/rpgRTyXLa1ZPJBdRi70bR2wWIP/V2SxZ8qITUHkHbJvvkQAVSaR8YGsCx02Ly1EnDdOwUOIgLNIT3z1oFk0ERfDTuY+vlS561JAI8uGRiagPX+6MEBPMYxAX8PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754282394; c=relaxed/simple;
	bh=Adx3Qvb0jGf4pi5O5TP9knQ9B8zoYI+sCFJ457XjJuM=;
	h=To:Subject:From:Message-Id:Date; b=Q/lMx27WmfoSllhPs+Nv8UDTzrRtU65ZxymPeB9nInNktBpVZb1HifD6gr7uALMqAivOBcjKYWuCOQsVuVlxUDiuc8h8sXbooPyWI5kLM9DoczWgc5zcxNrYmd4iPSX1wyG/1EBDeIvjmvmrbdvVFKha7QRljOqSmolV/5zWR0M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3jklZl/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3jklZl/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACB48C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754282393;
	bh=Adx3Qvb0jGf4pi5O5TP9knQ9B8zoYI+sCFJ457XjJuM=;
	h=To:Subject:From:Date:From;
	b=u3jklZl/PTb5rQ7LxFbUjMMEHBjgzOyrqQrA0r7aDyxJMYwqdOhULBGepSmiSD8WQ
	 kP6A9t3tRr4qWuZKi+Kq4sRVMnF7k8OwRBXpv/ri3M2tPLHuTqVWU5+5gqdI3alRKE
	 DFDskGwmADF7XbhHiSHkeQPYtu7Y1JQgGJaF1gsBSPyDeX+ItqvItqoSNP8YRci4CH
	 AvUgqzICwuP3vBSH0kY8r73ge5gSBVIBDoKjp+vmj3zINL0knEJSUlzYwFLBbClLHT
	 8NKkv/LzTJbY56P1JhjBYufbIgP0X+OQQW4p4mpig3KiIBINqLJo1dHu7o/wJByf/u
	 bHRuqTKqxe3dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97832C87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428239357.19792.7107442932052454703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f0edce5cd07d57f451809fa831423b15957268143be9885160d94171b1951c0
Date: Mon, 04 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754282393
