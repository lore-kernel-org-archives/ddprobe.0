Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C9FD7260F
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767245034; cv=none; b=adyrVdVet1+ey2VkcrhmBXaMGnGSVwoL6xbKqGzjlm7WhDarrSZDOtndMvPhBQlZAtozIn/+5+p3Cp74w6bB2SP7zZaJLD+6Q2R9aOAkI2EfvxgKN5G4uKqg2dGHOxhYw/gDGdIbgbbJFECrfR1wjYr/iEiLou4B83lKjcQuSgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767245034; c=relaxed/simple;
	bh=+zXuT3TvcJMlPZUZENiCGy+1tGCsz68CJUDK5UQK87s=;
	h=To:Subject:From:Message-Id:Date; b=gIrxKn6caLZabFlj2meOkviHvzHxY092WuoElYUmlZYHlF14CFhI00imTiC/CtBWTBcXb6SPWt2bGWzBeGHdATiaMVbDn6wk5s3+awnM+wZwexCfVTK29iyZ7e0vhyql/GwmtwWq7k+cBkZqQU1aOu/7IkQkbDdfZiEaU6o8lt8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKX3yfH3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKX3yfH3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC103C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767245033;
	bh=+zXuT3TvcJMlPZUZENiCGy+1tGCsz68CJUDK5UQK87s=;
	h=To:Subject:From:Date:From;
	b=mKX3yfH3UW/CFQAxm70xo960Uh8b5IfVjAEvcv1JDr6pZf5e9Ud/0tNNhWJMat/ZB
	 yWSVMsbZUSLF/mvh164B5cMXDCsucTLxrpkGdSeqAm5d5cXlORDypNVnsK37tlWnk6
	 rhvnz0Y5AXD8p33EegUY24zJbF7JLI9gozFMh02EP3h7aDd3yt0Mc0EAaIIdRYQgrt
	 /yLVAessH1y1QeeMa48lifgwMQpR15tCjNEYaHU/0QrUAAqJgBDi8zGFKKqTQXwg/P
	 6sJSMlLhA2EgvoWCDongFBgD3zJISuNt/+JJqhNF4rgMwIEBpMzl5foPG29g1DLvLj
	 t/bW4Ufr4LQ4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ECBEE57CE
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724503357.9253.17777119857600966403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02770f2c8b55618ba14b9f020735fba6360248fe0af71216ace24cb39374e542
Date: Thu, 01 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767245033
