Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E7F781CFBA
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776046054; cv=none; b=g3vTNBLe+pdQYDJ6JIYDfIxiNqL9Yfm4owHt7xBCj+pdX0w2oJWhkdeevbPLRjtUql94kJV+C7QlyMaYv8X13J/rojNU7UQNzfjI0WO3DvWjgEzBWdlRdd9N+iT+8Jk6z9kmtTEP1epjrjnNAnMeAO8BLc6eVf2wI6HQGt9+VoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776046054; c=relaxed/simple;
	bh=6FVrOwAwj5H/BDgPtKEjz2+6dEeXLlxJiuK3nJPNlr8=;
	h=To:Subject:From:Message-Id:Date; b=GqSgVM5lJ85vJ3jbD2JATfl2WwSYEa4mlN7iX8+lCGM+xRxnJ6mQRcMc0RcxElf8OmP2clXtiDdc0IqrAguNs4c8KinuR3Fi9kLQtQKZTc9d9LnCG7F2fUXw8TsBdGqroeLxoDuRALJpgAynYrRP5Tej/c2cHCDnbv3VUeq9gmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Va18lWiV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Va18lWiV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB42C19424
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776046053;
	bh=6FVrOwAwj5H/BDgPtKEjz2+6dEeXLlxJiuK3nJPNlr8=;
	h=To:Subject:From:Date:From;
	b=Va18lWiVvkEkKpXxwWfi2M/yGabWEqaOOuLD4mvkquXU8pQa8Wv2lkPQ+xO6YqZ6K
	 Kys5Nl9iajucem8xFfr/KAT7nosk4v5FQRSnQpnoYwpNHeR2njmzQZE8JV44h+IOzQ
	 yIPbJ8gGNQSLMLsKqqsJlx91KBMDXcXu6B5GEkasOJ6BT4qba3nh41CWmv4ynOGupJ
	 4VRZIyzY1415ec+KRtPfugm0qzKO/nbsDkKumxic7/Mf+3pWQpsdjdm1nE4Uf8pedS
	 qkY4Gp+n3TxJ/kildgcogAXy16T+Hcv3DnHTiZ88RkxWO7ELp8TzRRm0rbTPz6N0M3
	 i7rkWtAJd//Xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B18A9E9380A
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 02:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177604605369.25620.16866893807010539936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd29ce3af878556566fb6e6e70d948af58dd2877c3cc2b5baa282539c56a2830
Date: Mon, 13 Apr 2026 02:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776046053
