Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2536C1BC3F
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752824994; cv=none; b=hpZuyETNqkq1yZWkmAn2cTGb8nem96pTU8oe8L7pJVH4j5XoG+YVB59IlYc8sD3sN9Kv+clhL9gOI3jgIN9oOl+/NskrTrI916oOCdgUjxk5ZCMXBcf14pbC2XlxmY5eT55h3wSC39q2FPbT/QE7FFe+JKjDhfJxwbw1XxuIwZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752824994; c=relaxed/simple;
	bh=L2y0YISUXXGM5AUpWf0Cqx3DUoZZyhzl+TWt70ePMGY=;
	h=To:Subject:From:Message-Id:Date; b=CF+e31MT4skwj0qiEQHZpEd1sZOXf+UwPIeSOHVI0DxYMfX9uZQ7B9GMPkMdDhYFvJYyLNvrc3donRIdofRx62DH45Nlouzc35+2YDhfOwz42AxDP7+U8p4JTosRQCbZzO7CJ6yKRNgwrNJSEcdJ/1sA65GZs/3Wsq4tqPBOSjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQU1D78O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQU1D78O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A664CC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752824993;
	bh=L2y0YISUXXGM5AUpWf0Cqx3DUoZZyhzl+TWt70ePMGY=;
	h=To:Subject:From:Date:From;
	b=nQU1D78OE0tSAMOImQxhQ0HznMPinvIHfWVNAN71qAwBJ+ruEu++ivtMxK/9ZP0cr
	 b8Ab1uS/GmKV5ClHDUEQIqrtXB9iVdgQE8p+u0KJ1vqkiXC8hnxekungf7zmp8m9iS
	 JbofCU+ff2u/lWJBiNnxTaXEZlaAaRFLEMMJMeFC5N48denPHrcNBsF+4mKvObjOOx
	 7Z1c0pph9c7aK0dxfs0j/6EQjhrkDnbSoz/mx4W90mG5uM7L19tGW2Z5O/JLnMusC9
	 ehhXWT8TTaf3fU2weNfLoIODMWMj/yjjYCl48nlM6TmUVDA7Xw/skqUPx7TGZYCr0z
	 yLtx1fmjJBwzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC7C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282499357.467.15609996580803094251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd697a138be30c9389e5101db48d04836d3b0640fdc3171b9362ef63ee4d25e
Date: Fri, 18 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752824993
