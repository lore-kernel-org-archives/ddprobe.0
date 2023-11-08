Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2795D6117
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t4ByLXZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8976FC433C9
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699417696;
	bh=x1vWYymyMlzTAo6+yNJaWDYHyMF/ke9zLyta1dZJNrs=;
	h=To:Subject:From:Date:From;
	b=t4ByLXZrLdmtYnF8tZKLpC6PBjmp7iuXYE/UwT3AoO/7MIcwmIOfr0o6vPJUIwXzy
	 EopCS3EbRsjKiQKJLi9iBqtNfIyhGR4RzqTsgoPyz/jXCkZTUEyF9hfCwG3i1bYhr0
	 1739o5ew4fB8x4QTfhDQFOkib/hmeBR0z3JBWKLDZ4IsfU+htves7zLOV9NzLzpW/g
	 9hmbUP2E2fZqfJDC/SBaLRB4q7oLZDMaiXqa1UldLPfFQkhR8oc6oMAeAaNGNwcUdl
	 4tUc+SEAEqekfVSUbrPxxCO34ml6Lp9zwWRj8mC8vFE4ooOiHem2XPfzL038cSSK0C
	 MCrG1JbDoCfAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A3CFC4167B
	for <ddprobe@lists.linux.dev>; Wed,  8 Nov 2023 04:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169941769642.17705.3875217717813668618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ab51eb86be95f5a49d165b1d36446897a3d4f8b1982cd4024a6502d0d44ddd4
Date: Wed, 08 Nov 2023 04:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699417696
