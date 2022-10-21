Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B44CE7E
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69908C433C1
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666347053;
	bh=ktnzCK5uWvpbuCKM24I1nRh9L5LVOPNAmd8M20ZhUeE=;
	h=To:Subject:From:Date:From;
	b=hmqe08KMHk4SOjccAwBNBk1YdshHPCUbeIUUQN3XO2rswwi4rkAeAXryM7pgioNzY
	 H0okHuXUuYCQBWQTWqlY91RPYQnz30jrNdqIItaDzXGPyJfDBWINAMATQNmEw5cs/D
	 FJh+HLeKVTvKxnfUtadcvSgXh5ke0NrwQeuwaLRj5u9I0p1uUM6C750lhCB9oa5cQV
	 F+l4CPDh8izY9fmegwxDszB8L/e43ud+w8yxRRAzMoMAcisXG+DjsTbRCgKoovx0m/
	 6d4aB81mrRznssijN3uXn15iDXIj0LpoQhQPMbqOm+Qp6z1dWgQeZDiOz4F+oIMBHV
	 DqgO4ZSnz8R0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E41EC4332F
	for <ddprobe@lists.linux.dev>; Fri, 21 Oct 2022 10:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166634705331.20214.14130877282339639099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f882c7f67d81a8428e3e68d99b4d252842be19fe5de242d8c8b72fad55202b32
Date: Fri, 21 Oct 2022 10:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666347053
