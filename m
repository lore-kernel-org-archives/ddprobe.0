Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32D1728EC
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732890954; cv=none; b=PYewwh24DTJ3brS0FQUcOlXpxl9O+hkOUia9oAqhSa5cvufCi3KsPGpWDZD36bPIcqHuY6ypd3oXkEiaNAVRbYuOKvkL5XTlvrtjaCfeHFQgj/bK+uil6h5kiyg4cJ29UC0SjZmkux023Dh1tQ6wvx+UYH7zW8Z6PFvsqbVDKHQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732890954; c=relaxed/simple;
	bh=s0/P6LE0Ifak2anTx6dlSYn9TQ3N6NVDzWdgd9x+4JI=;
	h=To:Subject:From:Message-Id:Date; b=tMD7zD4EnH0dGVs9Ss0zmJU0zQ3y+ZfeTi9Al2vZprpAH2DpADhzWFG8prxkQvt03tHqSgmRNe3tgsnZ7hjNTVNVkZP7X69kyFaPiQCoSeeqsSYwi9OkQ/DEw6fE0GP5Yx0gt4euuNieonCLiZC/WkZMDYYNzHiE2WN4WJB2T3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2R4ntWK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2R4ntWK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B23DFC4CED7
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732890953;
	bh=s0/P6LE0Ifak2anTx6dlSYn9TQ3N6NVDzWdgd9x+4JI=;
	h=To:Subject:From:Date:From;
	b=F2R4ntWKVlTkO+T+mOFE55j1ku4Oans3vWp8dCJgTPqKGf3vB5tIUYBsTNoLMWM/c
	 6I/Lz9LT2F8jczWbE9XO52oe9OrmrD0uqr+C3GPIe1a/yvobmnvivS6N2Qf3yLCXy1
	 sHbZhFpVFQzQjb45rJcxnbraEGhKkeg7eQthx3/7e5AC/n9jmP+ZqHAYv9vgyavKW8
	 QQ8ff4RJAyf7yoCp3KD3EhHOM5vE3F/RBKt429y3xVKkAQtqsvbuM676FJ7HECydG7
	 B238rljq+c0mkL2Bt5HL9pfgSFJfjoq0KRfMf35IavSUvd2oKNFrNtwVbV4WnzxCJr
	 32Q85yucpUNsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9740CD6EC13
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173289095361.11776.8780942945387098847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1a1765155ef431f9d16ddcf88bf84f88685319de3119719d815460f7478254
Date: Fri, 29 Nov 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732890953
