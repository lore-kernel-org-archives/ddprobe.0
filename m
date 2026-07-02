Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35F7D391E73
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782977314; cv=none; b=IdlVLpTPdGi0ntv2CROJcotDKTYMw+71Mhm+eeWCDvv5oscJjto9TDOgZWo0872/2LcG/kRj2+9h0Vb6um/oNyAYdpywC+4ErktQubKbZEEo8RBZ0G84JCXJUuBg6AznLD7e7a4dCXL4ZgFzWsjHadOBmBOtwmaJOBbh+s9DbD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782977314; c=relaxed/simple;
	bh=dT1DvJjUoUvXjm+QaCKgZ/R3jeVB5LvtM/+UAzNV9Rc=;
	h=To:Subject:From:Message-Id:Date; b=IXOLP2DBS04oBFYl9HrhzLLcNiNSd0pVEM8lbbzSZ+dg0GhcEQDaArWbaCSNxWyu+Yac9TThTeBWU+GyUa6FZjDi9SXibTzmFPqXqueki56Iy+CPu4rcjaFptr4OvTU9aXz5m3/6fAWFB0sk+GQPdILUVGNw0z/nCL4mn4WdoWo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isy3kwR9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isy3kwR9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9A37C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782977313;
	bh=dT1DvJjUoUvXjm+QaCKgZ/R3jeVB5LvtM/+UAzNV9Rc=;
	h=To:Subject:From:Date:From;
	b=isy3kwR9NeZzmwbNxXbS+WRJS0kAm3bpFwORUN73NNXrkX3ZjdPqIgm7RZOHWeigW
	 A3cKc/OOFdcK2OEICHZon8Tw7+4HGdCg+wlI89sAc0Dm+Fs5XAZHINllsmGF88gvae
	 z11kIoFFqGG7u6Qf/0c5UBneKg4hG3/La8O/PisrphGwC0/5iXuXc2UK7g7eWH4aiY
	 aiNVUaCoqGdczbKHSSjuXskBiantIrzkEjW6Xv0WlqMZXFXzyA1hP/7/ojrUK0Ui3X
	 9y36fC67qGbT8oHnCTr1iEw+Hd7uMIkIj39TsKKZRqyAV3ub+OIFVLeefq51hVmbZs
	 /k14OGzkWW3dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9559C43327
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 07:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178297731368.1525.5104367950827168726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af21dfd9fb04bb543d8834bc82663b23867dba2e12a67cf28d62a049751f056
Date: Thu, 02 Jul 2026 07:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782977313
