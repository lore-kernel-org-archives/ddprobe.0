Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC9015A85E
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747468794; cv=none; b=guScQlinVJ2sHwLrEcLIKvD3BAQOuRHtQwzf1dC2sdxJ/IPusz8XWep5LBrOi3wb9RX2tVhnGwFg0Mog6M8EMYNIuFa4yeLtd6mDFpZA3QneVaze1tr3vzG9X8JL3YstIw+KAtWACNcDeZi7jiHGuSvO7lKUiAGiz8SJiELU/rE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747468794; c=relaxed/simple;
	bh=0xqawES+USibv3YfP3uu9UfP7UqKen6v+gEQsB+m5YI=;
	h=To:Subject:From:Message-Id:Date; b=PuImvRlRjjU0xd7PwAxNDFO7D9jC+qht9EWQqNUJy5IW14B5GnV4zPI6ygJM751fLF4qDKsmscvQahs1PjwF51SqOgiiaLjdoLlfUmT6pbGN3h2341b1RwNcGn+PAOSEtGyRe1J3JTUbVnse4IvUIt0COTNvD6zP8j6XN/Xgvbs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OopFvYYG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OopFvYYG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB855C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747468793;
	bh=0xqawES+USibv3YfP3uu9UfP7UqKen6v+gEQsB+m5YI=;
	h=To:Subject:From:Date:From;
	b=OopFvYYGIl8/OB5iU7PwXLpeA29XlJxthROnixhxLyF+sdv8I67yRmfYCltDtDVjc
	 Zem4oAUexcQRk+37jZJoixvNObvosR2IEV8D0mKfTRrphg89RWUl1Mtjwiak9JRWe6
	 Rtp8ZHJ1+NOI0lnhnOTX+oTilp5vsP69Ln3QfG7saYwKIBsHOZIsOUaVrHASSgNDjS
	 8q0PM0mLKqwx1PZ1NV/bAXP/V102ePiUqAsY86KQCG4ixgzlBRSiNe/s7RabZv6BRp
	 kGi1Z3UfuGBTjytR0j9GgvJcXuclraVs/2uGp5FQlvms/x5CFTxfHc3OjSHhfIABvv
	 EXOde9u08rOfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA07C3ABDA
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174746879357.5826.6087454389071932508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77dd1038635cb204fa5e1ea9795e396c56f34a31a0593cb1e2ebeb4edba6b5bd
Date: Sat, 17 May 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747468793
