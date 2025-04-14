Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519DA267395
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744630194; cv=none; b=aKXN0BAeZMuCVzYzlP9tyhnpErDaNuXtZRkYRach9AQZAolSHESo/OjDI4VO6kU+vqpQMRtrTIWZdE80vPVpYXF4JAwDD+A1r319O4RWbB1ijxvqBvJhyWX1DkrVD4J2KshhsDHsjKeja6D/TJwDWQWQM2iaCjQUcD18vlkH7Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744630194; c=relaxed/simple;
	bh=gWic+4afoR97i8vIjk6jJuSJa1kz6urJgctza92Bpj8=;
	h=To:Subject:From:Message-Id:Date; b=CQTNG6KGzk3gnHlE/9JHkyLBqAH/vLO1O9nheYv0PpvJOC3I6DemmrQajjhwJGO8/gkiawihGFzEyalyaU6rfha/olVELvwubvfW0m7wb/94lSzDy6EEw4QNNuzj9WlvWKj912vWO/mRryrZvVtb/QD2bO0MKtyQ2I+F1lLVzpg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnPc3hFu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnPc3hFu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDE5C4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744630193;
	bh=gWic+4afoR97i8vIjk6jJuSJa1kz6urJgctza92Bpj8=;
	h=To:Subject:From:Date:From;
	b=hnPc3hFuop5t1kKTf6FUUfqD+s7s87p5qyAMfwbe+osDe2fVhqBRJKH5Dv/K1+zqN
	 20gEXW4774zosQCFn8j2yecqRA2EHt/2Ds3qHYpCdCGtCTnQZyP0fNblZBhVt1QsOa
	 l7z8f3ttYLRASIEQvHzJAwx5rJDyTpqyfiWubxTySmzK5Hyfqo1fXh2HTZnD12YVIr
	 uoYFj+/2sZL0WAkSTdZiSPLMe3oVCQ8CFQe2+FKTxoSVuvaBcN/tG0hn3/SRt80Rd8
	 7ekWcU2SeBKyclAAEE89lNBbXWJ8kFYBFAY3HFUgFN056Vn/yfCk7t2rnMYtNias5b
	 C5TnL8xCT0GcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C8B4C369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174463019363.15801.7227209548650606635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6c4db126414114a8671eeaaf38859ea5715b21f01375cb3e3b2873055cad6e
Date: Mon, 14 Apr 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744630193
