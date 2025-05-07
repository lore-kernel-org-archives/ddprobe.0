Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 600C92580CE
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746654594; cv=none; b=O3tPQT+cuwjzljR7QrXucCNTrsxr1Wsrq7GxlBFaFaQINGA/Rlt2zvssco6Vk5zKr7RzOeMqmMWBTej9B+Xd3ipd3orxRUamfLPL0CaG5/DbOZDHP5G2O4aQxrnBrFNfb8OlOctEu9dqKokCDZnBAWKVXYCAqJg2zYgfPldOWn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746654594; c=relaxed/simple;
	bh=pF4u7gpvKQYv7qsJ8yUVyKx/iXA4WV6CZKo6q9NsL+E=;
	h=To:Subject:From:Message-Id:Date; b=ewaqTp4n6tw+nhkdnKVilr3g0o+z+svapohTRDb3txiILjPLTKpl1sKqFHvWimluqZg+LjlcpbV4J9OWXyvN2Fv1bJ2bvbSl4MW22fRS1E/2BSf5968AO4WH4itLLJ9uLT55Q9LGbzhcm2kVGN0m6lozrKt02Jn0tbYnKPYsj8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uHmmNmKB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uHmmNmKB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0CA9C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746654593;
	bh=pF4u7gpvKQYv7qsJ8yUVyKx/iXA4WV6CZKo6q9NsL+E=;
	h=To:Subject:From:Date:From;
	b=uHmmNmKBxNPGzy5p5nkpNlDvqDEaofhc8Lct1q9/HRBeK3GJG6Js029yLw2j6e7o5
	 XdWb3nUgLNIiH7FEChNsdPuF4amU3shG/qfYfyAGC6ZcHzNVcLRreiGZ04IMf0uMuU
	 3NOcCZwsz1hiung+6YC6tE/25xjQb8aYqd85b+FChkkJjkHuVybs/7VK52mKA3MR2n
	 WbHOuEJ6eFEWVGO1nI7qOk8et2KiJ2bJWqjeqnrL6v70QOpzTIe5Cx4N4VfpaME70n
	 soIHl5UR+aFGPorZKAnL6OxB7mnECT9YCPVzKTH5ijqNpexLH/jMICC8rUfoqM8CQj
	 wjdI7CUDXEsqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC09C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665459357.1960.3632382169755929725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233154129314f27f9341e53817ca7977d56d49994ef3692c2dc4b04626f6181e
Date: Wed, 07 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746654593
