Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474271DFFB
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791178834; cv=none; b=gyal7D+aKgs9E2/Y9fVnCSgmitBJSAJMZzTmO1km+Oa9/ucuDi8+etQNRQKCG/rE86NLYwJCagp9TZAEmsy+c1jeIVvcyufxxWnhv2Z87cAaYFbNkhCq9nFVYycwc166kPaX//EZ/0qi7VLOpYiC/S5z/RtCsKVJMTcTnxwXr9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791178834; c=relaxed/simple;
	bh=jSpFp3lCXdQds2MedmfqM4K3oIX6wCUddC2oaLjj7RI=;
	h=To:Subject:From:Message-Id:Date; b=jjoCExyWJkR2A+kq6McvRsPXMVx3DfYQ9cjPK9Ce0AhZ8JXk0OnmsV1c0/eQS05fbDJiRmHawnt4Ae9KeFxiTFBcjgKyo7UK1h6ANkoQOe5LfEihoq8AA5/efTg20SMU2/WNuZKEVh2w2rS/6Z/iA6D6IBsWCtlDyTZXwlLUB/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZ3VIWwM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZ3VIWwM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF25BC4AF0B
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791178833;
	bh=jSpFp3lCXdQds2MedmfqM4K3oIX6wCUddC2oaLjj7RI=;
	h=To:Subject:From:Date:From;
	b=dZ3VIWwMF8XLsLMBOS8TxO9VpOsMvX2SByLueZfz4i8UVqObn+R6/bw5e+E9UEaMV
	 rhwoBlkIY9BPgf7g3md1WjdkcaGNv1zrNOZUPmofDLfrJ2uGH5EeW4GgAXrWyBgujh
	 WZ02qGuulnLuFW8NFHdOG/DJaUBlBI6Iyn/GnRRHxje4YbDgcGWUCE/30tkPBsFu7e
	 HATjHnG7iFGR0x4d+TazVrm4gUE8C60Uf1oY+z7SUnAMICovLcRH+9r0IZhOlLsaE7
	 NrHxdNYZQ0u5hGVKjdMHPNH7hfcWSLT0sSFHHEvHFebU8PVwZaQdojG3tKuthp7oNr
	 Lykcxuq1s1S4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA95CA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179117883369.5877.10616143748881635678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b98653e0a123cfe16ac79dacc3652850d80c09662e273663df42a493dbdda221
Date: Mon, 05 Oct 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791178833
