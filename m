Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 405FE23394E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785675034; cv=none; b=tcSCP75eqjkKF+L0ovG2ttrT+ucWnTDFjFEjIpXED4C/PqQjKU8Hr+3joXWcG0Rm+thHhTY+DN1PRN5MNbefCOHWBpeS3vIm9Ig5SXCByoAQwMr/SSzgazHMjTJe6wqg5Rx9OcZZ+DV8yiADZngaF15PdTeK0hzVEXasDjbAgzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785675034; c=relaxed/simple;
	bh=owJFcntBVf1dA4taVzzM9Vv6AcOTS+83ivPL9HePkaI=;
	h=To:Subject:From:Message-Id:Date; b=LeBmP7OxjQa1oCNlYs98rrSD48xabEk2gOs/270kgQZMjY7QoVH+3kDAcnT41F+S3H/1eGpwPggaNdvR8XRhChzkt8bR9OoejFH0A+PxP00+A0lbjoHvhsTi9cz+WekVwWcRLICZqECQ+B8YbU6IWO9VyrdmWMIx3lm5MZ1zI2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HsV/0Cxs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HsV/0Cxs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAAA1C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785675033;
	bh=owJFcntBVf1dA4taVzzM9Vv6AcOTS+83ivPL9HePkaI=;
	h=To:Subject:From:Date:From;
	b=HsV/0CxsHlKGLkIJSeJ9Vr7MgYg+OQ7cZN03UWrbwmAn0/Tlwwk5P6FC5qmo7XNCs
	 pxKuO6WtdfRMzfWFs+MB4Fm6zKc9mYFWHm3mWWd7ExVx9+lhfPveyXM89Owkw3Nq8F
	 epDNjX8dTvaTRv/Ui/A20EjFUlYs0yec8XULDXlzVwEw6lbyqqNWNxsqVEazZmM1Iy
	 Wr6704p5PXsgSKfwy8+FfcxKH5g8JuZe2iIpz/Su32RD4Xh8MFBa6ExtUQkp7GhhjK
	 qMWp9/cI4tcy2Nwsaw6qQJo5RnVQ+3iJyGgyQKvB/MT6UG3CmERGILgffrCdoPp3Sk
	 wmqRUPWXGzhzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8653C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567503368.20286.5491021513018402456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90bc8397346938933af0693950f37d92a1f4978ff91113346983c4851dfe8c42
Date: Sun, 02 Aug 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785675033
