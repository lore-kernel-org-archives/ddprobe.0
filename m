Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F9D5477E
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786846834; cv=none; b=R4xHvCyYk5RLwAxc8nR9fVdGgvcLcK2AclAvzXb8MuG0ilpJCULNKGXi/QEZmDKRQGiXnVYB/1+P+kX3239GB58mjdAMrooAQ6D+RvHj6zl4BPsneumK+WqjCFnAvVMU/ZZvOy8ccv+F9/93AnzUI3sburwKyFvCMTgw5OXju1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786846834; c=relaxed/simple;
	bh=FstStx4CWIu7Z6ckZkKX1K6WtaaekUzY1UkAOWsaArE=;
	h=To:Subject:From:Message-Id:Date; b=fcpjqPQxQRW8Ikr47u6Rn+0QnKdcZAKRttOh8NkpOzYyFCoiTSXeYSolMzmSGlIeRlplCwmfucC0bK+xnX2QWFf4fKuY1F1m9+ZFlkCDNJaXLNe2jgWRJ8jmKumxwyvZtr/WCAj68Ok8p/1AgvveNOBzU6e3guDxnqxlKw0u4CQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AslZFQ1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AslZFQ1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB284C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786846833;
	bh=FstStx4CWIu7Z6ckZkKX1K6WtaaekUzY1UkAOWsaArE=;
	h=To:Subject:From:Date:From;
	b=AslZFQ1Hd5IHrPCNc7QhYngg9tUeMpfqok7dLdPjVbxaSuzGZis/pu9QhM4OwQgqr
	 L7BnB58Gqxmt2YZ9JWtX9mVYBiq1/yYRVf1jGdLtp6yYC558VxY2xVfGCegmkKX7Io
	 YJrb+5piVpu8uY7U2oLm9oMvr/DywpQxC/wtGzY0ZxUQxKtS/rzxd7KM2GpznHPvJo
	 XaNwYItDWJk6hzo3y+JnbFz8M4GFlHC5itRThaK2Pd0pxzSS6yqaJpa6O3iCP+AxkA
	 gnQXh11jEKSmwlsx84qm8wg3ZaQs+Vp1GgXxL2HiIzVupOWI7pJODr2UTcOfellrjW
	 4B/P5aizw8M+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA45FC5DF67
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684683368.24779.4260642926994819290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2d7c26938927332e93569406f4c3d5988c3711566f36883ff23a2fa5e120af3
Date: Sun, 16 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786846833
