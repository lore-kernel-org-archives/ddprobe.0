Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF6392773E5
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772289293; cv=none; b=Cic5QWVETplsloHeNsf53Ul4pkR2YNxz5KMcOy21wCZCBmFd0lxSy4Puok9Rena60S1YiVReBqpfGjFUW0T/J/kK0Dcrb/ha9JjRF98HFe6IwhgZ1joqhOIS9LZbj6BwS92ZAbu50FzYWaPpoCAC8Y/LTTiXtZ2U2/kMJEnTCKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772289293; c=relaxed/simple;
	bh=EjImCjC/vYfvvbMdJQ+3doviEAZzq5r/gxOBcMiCYfk=;
	h=To:Subject:From:Message-Id:Date; b=qR9KIVhFTQp5O8pWFqg9pcSbBt0IBJumcQcR4rweLUOY7Z8UEC/VY6iE1jtlTu9BuUHSIw5wgJMVjJH8Q9LpJaM2lIH5HAfMjxrLdEAGMDL6r51kMgSKiITggcEgtAj136TpNT3W5yakpPRZhENYxSqai2BtyJ2ilP6x3tuBYLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C+JrWbUI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C+JrWbUI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5283C116D0
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772289293;
	bh=EjImCjC/vYfvvbMdJQ+3doviEAZzq5r/gxOBcMiCYfk=;
	h=To:Subject:From:Date:From;
	b=C+JrWbUIEQs16nPtDOHGo2CJC+Se2O7Mm44eZgC59OShNjaAKNYqr/lxRDyHoCm6W
	 p9J0GTbwvztJWvvDpdYSTgJAWs9q7Oj8Ch2sswu+hu4PFnNdB++sr614ZKmB7Vhlws
	 Om+69xR7wDNAgWWfP1qE+diInTgqCO4gCE4SkxRxFm/QDPui6iDMDPgstxx0tHWFap
	 WOETaG1kvRC5mxnPXYObwy7hA2WuEGE6vXssM8gKOG+Q5IWLCuisn1GUxe0DjdpWCt
	 D7Yh8TTtliWltMlRqEWVsblPZjdvejiw6CRfdOQY8pME/46eXDCCfY0cNUDGgFZOA8
	 W2RAsAfpd9gEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593DFEE4ED
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177228929357.6273.1280991657766918482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27de3a7f532448446913758a2384944bef456ea9f8ca382f41b78817a682779d
Date: Sat, 28 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772289293
