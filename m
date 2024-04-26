Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60346824B3
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714137743; cv=none; b=CManhd6l7od2rboEH/XHDZuGFfRGMfWe1p5hnUXn5ykR87e0CEZ8ktmGPaslvOwQy8hNBdUHYMEeUF4EyK5TbdcLdYlkHh6zGsCvZ5NALlKx7OvJVHiuiQlyaztLxpa2iYDHi4LgsnH6J1U20Jvijhw6vU3TynuXhjUXvsz0oqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714137743; c=relaxed/simple;
	bh=H7DDFVMd3WVLh2rDXb1uxvrAn06Dzp71ByNXrZAkuFw=;
	h=To:Subject:From:Message-Id:Date; b=twqzqmoUi8RA08whwG1Bn9FrcokZt2ySLG5Woi8Mfrk2vCtLjn35jjvDycRlKZYzTAya+il7TUV1NXfLp5CNI0GCgMctLnngVXoNecx8YW15qymVpLzoFtAB8FGcJaV+AUqC1ps0Zn6sRoiy1U+/SFrXh68W+UDSon+gWapRI9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvXTsO6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvXTsO6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6993C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714137742;
	bh=H7DDFVMd3WVLh2rDXb1uxvrAn06Dzp71ByNXrZAkuFw=;
	h=To:Subject:From:Date:From;
	b=qvXTsO6qBbFV3y4v16uW12Emx77ba2Xe1p4+tLnG6GihqsLDh2OezjQGdjJefa/GZ
	 byHXxT2siSzgYkjx4QIW+NcH58lq0gjU5c0r234HgSJMm1xDJOd8RV76gctgjWoyMD
	 b1p/iFAK9P+vF+2p4l2X7ykWbOYLD3IGQPzb+pShj9pnmSWtTkcU3aKnle6tpqqtYd
	 JChoNil5JVw5+Sq9B29v/YvO8+OP/tamIJz59AAKn9tlDGmqhSJ1D46VX64aolBe8y
	 hk9CZnVh3Z1sRg3oGRIT4IAhNVIijdYrD7KjcVIBdPqcY8ZSycxRQ7WN/+cLtuP6c4
	 avGrdtpHWf0Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CDB3EC04FFE
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 13:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171413774283.3914.6801108639526858550.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7fc918ac010dbe232c31f25da98c11c4570a080cd3b465fb97b22513a40d46
Date: Fri, 26 Apr 2024 13:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714137742
