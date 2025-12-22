Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39E0B405F7
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766372634; cv=none; b=uKm2JK4j5HLP6l5x9hAisGMr8w/FhjZXowIm4s29LAQrF/DjYBbMNniXsx976s5qD5boA97A3TyCutksb9eIrdhSVe3zfb6A+wdEWcLms9TmZSEG0vOIsHz2i1cE6SNPAoDaYPO2TjOYjuAciB8hefn6A53GrUDWppA+IRgHxm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766372634; c=relaxed/simple;
	bh=VWgMIJm7qKcGdZ0IMWQ4PnOqVdg3ErsKgrIaRiG8cGM=;
	h=To:Subject:From:Message-Id:Date; b=Ur0Mj3tL36euDyVUFyJWjmk7RQ6dj0km++Qr38Owk0QRBhG3PPHXgHQ5Lou8olkX81+weDqcM7aCRPwQi8p+1Clp5yI1CsyYACGrCOmX116tUnsrtgfIEIQIrAvmaANE4BsSnV3XmA8t/vFggae5a9ZJIDDe3qxt+3OWcyhs5mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h9172eNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h9172eNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75E2C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766372633;
	bh=VWgMIJm7qKcGdZ0IMWQ4PnOqVdg3ErsKgrIaRiG8cGM=;
	h=To:Subject:From:Date:From;
	b=h9172eNSKlwGkLC+MpQn7u11aJmI7BoFosUCOqo4RbWI0wrnjm4IA+JXoQ55x0LdG
	 8xQjKgD8vdGapjIyjpRoj2wbH5SqxYo0BaacXhwuuMYkpHVBMWXuBHQNAShFeYDqOp
	 O45AG14V5urDeUcfB4VaLSFFp2IvL05I1WFgP6YocpykXiGLoi/tWYKvck/iZoWdnY
	 Cf5F5M6MInoQeXyEOkW7CI6hE0moRBfiLoMDxujZCj6e3jYDwJgBbz+2D95v4MM+4S
	 zUuVtju9GC2sLlqAtMGvNp9ChhvUW3+pWamy/Y0BxLkq8KaxwGhZMVxrPb2zSIJiIw
	 y/xTDsAh+95VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 959FFD68BD5
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 03:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176637263358.15851.16435272056628177969.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1203e1e8758638e6b871840e4eb913099bcf73b116252988ac76dd09bed8616a
Date: Mon, 22 Dec 2025 03:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766372633
