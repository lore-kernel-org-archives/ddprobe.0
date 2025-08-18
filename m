Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C53132C323
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755538194; cv=none; b=WfB1m6UUOCYwbawtLVAmgJsGyduCQTi6qQEFw9C2I8t/QoW6r+uDxBYBqBB8VL2X6RLdFnY0IZLhTApx7fl1b2WYdH9mDjWFdx+jRdzea/SWy20VNMr0zeaQx7xMgOCap4XT3x/iWugbSuEBoQppOsA714bybJRJZHd0uA3D3F8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755538194; c=relaxed/simple;
	bh=8NU39HT0HmyfJn1M0WACrW/B0n3uRGnWru4Gp7qY6dA=;
	h=To:Subject:From:Message-Id:Date; b=BXL4WWBVb+90uLixx2r5+UDjeg38ZsiIbCSa29OWF49bO1AoJhLfcJ8RU8TTPHUu8HrQbBwtxgqEI5LmNoLdE8LkeY74R5WDipBEGNXyzfuqQXsVKIwWlh2tTC6zETxgsyQ2Oan8JIYn5FD/9m3g6uu/WfuHOFqVNyssuA+L5To=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgz3uyQ5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgz3uyQ5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F45DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755538193;
	bh=8NU39HT0HmyfJn1M0WACrW/B0n3uRGnWru4Gp7qY6dA=;
	h=To:Subject:From:Date:From;
	b=hgz3uyQ5cKm43kUbJR6kCuxIqJeghD2XLGQdyF6+8riF1ovuxfn+89q1wErIzctrF
	 zaix6SQndNSWuRO4S+Aep+lnJqCabiTMHb6FgEp+8yT+QGPtD1DxFYDc9uOQjSNDwt
	 1vARNan5PdWlxQ43oEzkx7Hz7n7a9YYM6I5onUbqE9hdcNw2+g+CG6v2rRfn7LCrvi
	 9lZUFpQzK3x5V9nHpP37BQuyfxNW75zz+P+yY9k5uEsshwIpodefF917fDO/9tG1ow
	 0vt5VFVn6b9Ne3rKdEX3bEAt1EnP2wZxgQoSJVr7pHcAmame7PowyVeD1TF8oarYWB
	 iRxmwGpIaeXKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E95CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175553819358.27493.5709571858302306427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d1a8dfad56884dfe12779428f02df27decd01831325521c245e0b438d88de17
Date: Mon, 18 Aug 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755538193
