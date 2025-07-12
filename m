Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C89818D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752326994; cv=none; b=BpmPmrwT1+dJAFpwqZzezZU6cHpoS7zCQKGLsKG5/TZKaiTuSrIeMU+yiZNYJHwceg+xXz0FlwU8LXhxJAlvDVys4Q9i5ANchpsMetn0v7lL5djn2CM9CdDu8x3iWjDY+CHCuBbqDGvs6pd5GDCMkfbhbO5Yi7eqr15DGkstY3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752326994; c=relaxed/simple;
	bh=7+RtGKTM6mYXrIqtnb3MSZdA+dBEAdoAMJuhmqTf2Rw=;
	h=To:Subject:From:Message-Id:Date; b=ki8N+3eYA2uIffcP3vCqOzIfJ0JlBygs4DCBFzgqxR+5zD/pIivAUQNbpqb9CEGF3n/a0jT2DXgWnRY1l6fPqNU30/j2mNdMMFke1aIYbYv/E3+5MHJmvagZCIFdwN32N4OOSGAhDGRzjgiMYZV8EHVKTfjcfqsjminut7X5h2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UOhBBXVb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UOhBBXVb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CAEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752326993;
	bh=7+RtGKTM6mYXrIqtnb3MSZdA+dBEAdoAMJuhmqTf2Rw=;
	h=To:Subject:From:Date:From;
	b=UOhBBXVbOMcf/flI/teIaf+55h6yTPpzYImowqhOoa3JVmzP9CrzuzWQlJH5zhlU0
	 xCtDNv9UtrvdKK269EvLLNY1NysLgT/vnJajlyhJIA2byEUDyzMTx8c3rxTH2cTHLT
	 1YDAx8S/tcaIDQW1I5scHd2gcL/3M22hoj+r0Mq+LJ51PCoN1i8/yhuA5q0qeFYCKk
	 GlCYaB3/6KDw/cQbFmhjB2UaJuOmG4VsXskhPqtoyrhtK4z2WdugwQjM0NxOy4Re9j
	 pNLIQw3wLLvB3bZnHSeBGjBvRptGeWfwPfmpEpNOyTuKogMhBWi2YFQGLk+/5fIAB9
	 Iby0ZTPOyFrtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94257C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175232699359.8793.12838005991943199382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ad3afb450c9860a62a81a794c060799f6a5d61fa1399977359d9740ce766631
Date: Sat, 12 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752326993
