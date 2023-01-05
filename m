Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB4B2A38
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8DDFEC433D2
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672911687;
	bh=tSEkrXhGDsOuNsrpy7iGZiYVet+jCVSH0Jj/49XY27w=;
	h=To:Subject:From:Date:From;
	b=hcHXX9+CL+uvegITMw+rtFSOx0XsvRwSjiaUzmkTR0n29vUltV5EiEFNvKsM7s4ET
	 F3VoxvjUGoEweaF4/X0xBTRDKmlizBXEWpR70syGSn0A1OznTt3TeizuJJh12KkzGL
	 2YSojCpZUNjBx6cZEbXkusdeCm5wdph8+MBd8ZBZFrkgikpqrJUKW9EvPTIKzAMbxi
	 zUVpfJBy6RF02nqGwo0bAJqxlN9ZMXygFa984L7Xk5TuCY5e3CRm9pFsogIS5yEP5V
	 /A7/vhKblEqbOypvFKvkrVrR5ETef7+TfLXtJ9EYY8TuVz8aVukjWu+vvbst1tS5wL
	 ap3IzoObG4YBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72C2AC3DA7D
	for <ddprobe@lists.linux.dev>; Thu,  5 Jan 2023 09:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167291168746.24234.2656092685275767988.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4c96fe8134135a827a77f1f95f1f3bd96a3d4b41c1a390331f23fa980edc936
Date: Thu, 05 Jan 2023 09:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672911687
