Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BDE631684BE
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768759433; cv=none; b=g5ffzxB4envYdAijOpAHZG9lWFlPjK1eb9sZ35O8deuKbcBFp6/E9EFW8+dTjSm7uR9oRHv+hjZPMOre3zPJajof63HVKqA/cW4YgWjHHSsfciOl0OGUfKNBXmFXuwfhBCWLgoNQ8hpvgD56TrYV4Y9HcxxCN2bXCb3dUpGVGhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768759433; c=relaxed/simple;
	bh=DIH92K5Lh6H7Cw9aLCYMHAms7vY2FnBlg9ni1fOcBgs=;
	h=To:Subject:From:Message-Id:Date; b=jyAZsZWgLDXWWNgNKTWcq5gwqQWq/vtgnNftP6s50x7Tf6kAzK/H0zLjmHPYQV3ozDi6qysZw5xw1uOcKWKXEGhh8VJgUffSfi6HktNclB3Q48u8Zf0pK2mvMXz8cR0fVyMmpDDC/lnA67CevtuhqqTbzJ/VFcrAmEBEpfrQixY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KhEdjQKQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KhEdjQKQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A22C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768759433;
	bh=DIH92K5Lh6H7Cw9aLCYMHAms7vY2FnBlg9ni1fOcBgs=;
	h=To:Subject:From:Date:From;
	b=KhEdjQKQNpJtDi/fF3YJLhDdni6yP3JkOuqiPqvaI4A4memawUVh0p3olRJ1ouwTh
	 ogEDse/N/OnPdWsKUFPLDwJycq/WvAG53gdNEoXyjUBs0p5hAPS2609gECJyx9/lZq
	 UWLYQ9h1Rk5PE2TLs3lIuKnI4cu96Fdq0jys5MiU1TEmjrSAbTnQ3+9U13SN8pVBMY
	 6G+whaTN65vfexokAD+gfEyDAUBC62L4FLX7jQMu9oV+lcNTYAyJYx108jHY4pCRJO
	 r9Ip/3WNNbek4R3RXDFtA77tIGqPpK43zNXkpRXokJc9BcrVMTm7SBuaR6k4baH8Zq
	 AuacbMm8X3bLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9224BD4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176875943358.7861.16744746107845743350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c87cb159bb85de2358842446d224a0af148587a0eb9e964b30d9eb2617ba4cc2
Date: Sun, 18 Jan 2026 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768759433
