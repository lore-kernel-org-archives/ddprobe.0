Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2858E1EE7B9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746624594; cv=none; b=W8wKk2jCdJxtPiAlYZ1pygPZH/zhSQyzezUi6SK0z4PGPW8V2QFE/j+PFcDzuYVhvQb+18QqLTdn6y7Zh/jAwqR03+EwVYXlA2H4REvL0B8oH1ugIknN5O5+JD5D9ipshErNOQhWqsnnxb5RW/BeYqKHNCOYfp/Cg7l9MzO51pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746624594; c=relaxed/simple;
	bh=Q0LFGuPsH/7Hee9tw6qA8Q1LfbQ0xRY3tsIONlp8V6Y=;
	h=To:Subject:From:Message-Id:Date; b=kDD1ZI0pRCNA5x2n1jdxv4GRxpgvGXjjQq/DZ+rlQHIBAGAOOt1lnjO0GWw5dowA847lGaAqxj2G1xLttDyqfNwwt1hQoXf2SF6OtqowtiztUzr4eDceMFNXmMdKdHVjt+rray3eG1vnKKIbMAUOhSZsCNofFj0FexxtcqVBt2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dpiSt83X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dpiSt83X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D31DC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746624593;
	bh=Q0LFGuPsH/7Hee9tw6qA8Q1LfbQ0xRY3tsIONlp8V6Y=;
	h=To:Subject:From:Date:From;
	b=dpiSt83XRyOZ2ser9p/78+uCQ7PuTKqHIo8wbbpcNIy/szNbHkRvM56qqKabj0vPr
	 TQFMwBIjQgTpeEoFWSu68t7vnwwRI4/GWgFpvo5euhcuNmOkCciyyj+ddyBMzxPzHI
	 +gIIbVOFfvUeBX93AUbdJakrFlIGQGQPHaVfSRJdpcMk2pSHYkYgwdxa2sc/sVssw4
	 dCqdsOB8S8dCryZ5KM/R0pGQVu11G+GHJdOKitJ0vnAQA+nSTLV2xqYBAxjSFofJ5o
	 rtbL8nnXFu71ivhmEt1gCMVMUHMvbsdoeBydEof+7Fnic9u9SJ+vBloNLWH+6oUfUI
	 zy4o85oM8nIvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3CEC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662459357.3015.10889066470933043708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df4431dd11c6554e27519df5f442374205bbb414167804f46cf5096a2387d3ec
Date: Wed, 07 May 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746624593
