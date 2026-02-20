Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 133A82C2356
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771626894; cv=none; b=D9RwJ86+iZA1WTuin2pLLT2Lj4s/B8iex55uEv1eX+XV8npWaHREBNSKVQBRsRm8SAqCsI0gNeJGOyTW3FYPRduKLwtbMchFJgFNhtmRGE4f4JWR5gqrwQVfS41Iy49x+pkw8lO+5i72cL45tzBLmcAqdECNoCpbZ/JDaMU5Ulo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771626894; c=relaxed/simple;
	bh=sO1f95DgRA8B2LWvl60bcioFAyoQ0jNMfmkJm0W5fdg=;
	h=To:Subject:From:Message-Id:Date; b=J+FqVZAZrUuIaz4FugxfaE9QzKdWuLA1p4aADeEU5pXAtfdSlAAt/GZqr13vPYUjgGrkgTo/YXhnRUCRnk/BSLD6LNVEnDOKhgmBmA5TxeQERg65LDHppMgLjhfQq3rvphNygnzADc/3Xngp0LDlpaJSoL0thXa1k/efn67khns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAlrRsm1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAlrRsm1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6610C116D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771626893;
	bh=sO1f95DgRA8B2LWvl60bcioFAyoQ0jNMfmkJm0W5fdg=;
	h=To:Subject:From:Date:From;
	b=bAlrRsm1Ci3PJMz/n7w9tadNcJUb6bvmXKLqprj/ZDsM+oGijCHeLcpnjhb7V9XRt
	 xxi7B1GI1tzm2XUMJhOjmgC2VRpnDurTGBzzL9XZegdfI5BaodXtoWP4ZoRZ0IaLTx
	 VoV6jFl9kdXVa2YaqdRrT8UAqKryv6Ov67otUAAt0EpMfchWcKdV3M/Mx1i9m3HrS4
	 UGkrpHhWo64l+IoOw37GrQndohlGl5Va4+fH5wm4F1XnrlYuk7IcG/NS5IQ9oJV7nQ
	 WkAgxZIAHREWbcDj4zchIcvGGEtr+h7swX+PHKg3izlOK+qqRRHNulaEBo9Ezf/Lhg
	 VvgHDMYSfZV0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC9C5ACC0
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 22:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177162689359.31131.12292234866387380449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9602c710e9bee1437012a4ab6fbb9b210a8e98820a16e623862722fa59663fc7
Date: Fri, 20 Feb 2026 22:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771626893
