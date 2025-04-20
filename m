Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 450DDF50F
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745110794; cv=none; b=IGsxn6ikRSmmwORxR5wp4DfRFPwB1bq59K+4oZVwwSofYy0aQfVs4xxvSOcORSOzGmucCspIxlH0ezyi8zcB/a0M/jbzMka1gJ8LVc2brx27O2snm+ib7C+/ye8s88bD56Nzc47TpFDgGgjH4QA5NcUg7R+uXGj1kX3c3LmRUmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745110794; c=relaxed/simple;
	bh=w74Zi4VJCpHv1gfVBRX/FgvECLtTYRJ9sjE69E9I5kE=;
	h=To:Subject:From:Message-Id:Date; b=NzlhlibGe8D820KZOW+XY1xN+99kmfmM5zNktn8BVj+T0+wnJ927dN7RBjC/i8RyqDX4xcsbzvFqm5bjektWUFyFLi/WuGTAVfUJzed/yXgedTSKV1qfLW4shKTxgIfgeIPpjoqc/MbH0+6b94ex3K4IfIbcwfsgGwZ51MTh2Jw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HiwphW1g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HiwphW1g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A63C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745110793;
	bh=w74Zi4VJCpHv1gfVBRX/FgvECLtTYRJ9sjE69E9I5kE=;
	h=To:Subject:From:Date:From;
	b=HiwphW1gZaKrjJzCDtbEcqkRFqaKMzouGkEXjFYMggRUDSMufwGlYm/atr9CQDSXh
	 TjY6dWok0cMsxoj2dwvCnceCJanQjPGQO4aAqOBjfvWU2fAYoRdSNWqKMQC0MW7NNj
	 CswJSHZ89WziiO3XC2Hyz08l1/2QvfZ+jPH92Hke/X1kZiwp4dDHw+eOcDvm3SoFjM
	 ieHFPXnm/FnJ88/njQ8giJwctjgAuaxxCZ5HnJU7rMPW9MyXDpV02sCEUOlvbOOpj8
	 BkwDi0etEwzOiw9ZHQUL5sv7JsYJMmloIopY6JZKKQOoidvbozOw6qezvWx5n08BbU
	 f8lmXGSy2Sdsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926AFC369CF
	for <ddprobe@lists.linux.dev>; Sun, 20 Apr 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174511079359.19177.7967472775423217543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db73ebfbd2302b7b5a478f9cc17b33a3ab4cd03c9fbdb798b00b9bad335910de
Date: Sun, 20 Apr 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745110793
