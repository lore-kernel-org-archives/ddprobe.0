Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A7E781A
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:58:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BN0KlOf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2149C433C8
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:58:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1697666293;
	bh=REPwnCRo3/mXIzZ2a8hmpSdQOhk2gGMOQPIGNCkyPrg=;
	h=To:Subject:From:Date:From;
	b=BN0KlOf1wz4tVs40nUjX6uzxtfHZX1F0OPQf3bzY2B+/VD1x6bmm7evBExM49VjrS
	 a5GWn6ClhYgqseRCEPCjmHs0L5Gp1bcI4GdHF+k2yLCuVGulAwl5Dk1p4GZoWnxlA2
	 +gLKsINcZmB8AAnHHLQzetBpgRCTw2fcoeeQfkE2CtOaUUzl5XFhI1qshphP5qctMx
	 lwzUtSzo0p4A1ouXb0Y7nskqPqaj7ncRwP+dLVTUnggSBK8YDVCE5s4qWj7XcVYy4b
	 RXGt5tu0S3CarPuq0qs2h43/+ov0lN3R4AWZul3iXZkJUYY7+6mnXtaHcy9BcQ9eo2
	 +YcAJZ5rqOBrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D30F1CDB47E
	for <ddprobe@lists.linux.dev>; Wed, 18 Oct 2023 21:58:12 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169766629283.2990.6708274978891662298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e23b57956bae2dd8c8d238cadab67115807f4914d6084095419bbf91894ecded
Date: Wed, 18 Oct 2023 21:58:12 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1697666292
