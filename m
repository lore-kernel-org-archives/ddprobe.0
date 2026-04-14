Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FC03D34AC
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776167854; cv=none; b=eHEldjExh8ev1X3rkmSGPfBcFrpO9MDvOmwJ2cMq4vN99YxcIVzCJnu1A6ft7NhirOnFyShpsbHufmg2N+SQu20oH9fkpc9sE7f1UB7rwyhYzPY5MSaGC+QfD7ld24kH/sZDGQOQfpZVxMoq7YFcbJgNgcn0ae/LlUPOmlTrXks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776167854; c=relaxed/simple;
	bh=IRzRbGd1IKgeAk0uCVsKEGeCV8n0k/uu0P1gaJjEwB0=;
	h=To:Subject:From:Message-Id:Date; b=LbFKsSZXpDPtbq4187BB2Vr+hHUAi2TlWhgYR2HmmY4ALqXG4qcFF74q9YKWrjFQQrl/1qXSPDHQRYVh9eE5i32Ndd2C0BjtC6xmo/v6mp15/a8twiDc9T1k+bFu8XYa5XSYRtyVBqxs6XjZqep4I2KXXdL2W6wL/aus3sjSiZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ha76LDdV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ha76LDdV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B75C2C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776167853;
	bh=IRzRbGd1IKgeAk0uCVsKEGeCV8n0k/uu0P1gaJjEwB0=;
	h=To:Subject:From:Date:From;
	b=ha76LDdVZVLkPQBaqq5+UqQMPAxw1oZM89yArqceTpOB+n7CaEQ46ED+Juf1M3nkc
	 Hd/7c99o8X5ua5qxR24NDah8bILqg5/iakTsX1EtUzQUFOJWhmxpc2uMRb+79IM/es
	 Fd7K7CX7rMFTf7n1dsyrqeUZY+kEvUfT/lE6K1IiUa0q4apfA2q+rKKEleNoSyandN
	 pxeTrlBeGVdwHeKPnvMsCo8fY26f9S3yjPSz2ozWUuHQDYYEjsaj2KHmJzR5fqQ5Od
	 Emg00WWa8uAyjrm0OVon0Zoau6evug8Dc/ed7TgDUj0uKSGvjD6n2SGKHe3FpM8ELI
	 GyZ9JrwQYHMbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96CCF9D0C9
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177616785368.14695.16700420651023270359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444a05f4909f615983eb334611aa4bcffb86042b26205ff493d0925ab45d6700
Date: Tue, 14 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776167853
