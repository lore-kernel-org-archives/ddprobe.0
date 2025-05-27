Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39AEF42A99
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748338794; cv=none; b=I+KxMJMp2w97PMHoz5pXU2VLNl158giuhdPtE/2k/XkcQIIrnMdOTyx+U7G9eaOTHNItuetnnHc4TcQt74poGQUNmceS/9mQCAZOD9BSki0YmXPzbcDSD/wZ4j6KAU+BWoO5suVRgIa22myfSg1pJ2FHV4OSkijkSVZVWhF5Z8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748338794; c=relaxed/simple;
	bh=DWKb5aQzB1W3QInJAVtlSnLkqA3I7LVo7J5ovNI91u8=;
	h=To:Subject:From:Message-Id:Date; b=PEZ6EFvK3SkVCLHPBsCyScrS8gsHdeSlbYk/4dX3phlk9U8jIpRNSJTUG3rvEcYcTgXMkfDGc7nFF08YivoAjambhXgOhIpRUS+rIPMXNoV25LRMeTO8IjhpzBb8/OmRc7uX2X3tPH+1LGZc+oPR8MH+fhSYJwxZpOIuQiwU4+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RS1z7IlW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RS1z7IlW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A85C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748338793;
	bh=DWKb5aQzB1W3QInJAVtlSnLkqA3I7LVo7J5ovNI91u8=;
	h=To:Subject:From:Date:From;
	b=RS1z7IlWc6TyqEWJJJSUb/tomTJf9Pj7hYGx5Z6XLpXezXM7Mx169hY/cIPtA6Frs
	 2wN8KjV7wcR+aZ8jtNz5QrqBHQExrVmK6EwUotDTeNwJ/vpr26wcJdcDaXGX+on9+O
	 jt2jzeASn2NOJ5zFE/49xdeBv2CpUr6jdgEyf0E/R/3hrwLGLNQs82tBBcJ/0e2J1J
	 IBvaSJXTb2aI1DC2T3mlwDTwHxZ0kbw5x4VxMY6i4LqwSuLBLahrGzABZ3MVOI5TMC
	 mFkLlVisY9eD+jWwjy5cE3YF0pZNbkX3LNwY10o/MajpkmY9GDcwJmTsuBrg7BJRj3
	 dAwJuXF7Ghy+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAE0C54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174833879358.12656.6105655200522969301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48f998a82f214daa98472f768758c375e3c040ab77832209b24516c3cc0b50fb
Date: Tue, 27 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748338793
