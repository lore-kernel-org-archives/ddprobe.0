Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A4540DFD5
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774226094; cv=none; b=cFA3PVJ4Q8FJYZj/m5z2l0yY3uCrdJZqPcj/8dGHimz3VXVRvEOFzSUyJFUH21af0k6t79xsX892LtHdUGQQO//0YpquscEYiTi3/ccee7bF0qyhj40ywTxbRIhgIu3Q9HjlMHVPfuI/tLuVU7KDYpShNc1BVLOayxptj2jQKVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774226094; c=relaxed/simple;
	bh=PBCAtaQbGIcEjYzzaKNGn1wHxtMGR6ED4sw0Ai4vb5Q=;
	h=To:Subject:From:Message-Id:Date; b=elWPIzRv9CpvydevTUBFfVG/FB5irX0DzkXx3GIbPZKXcsfhDw8qKhxze0Tk85TG2jXdcYCYww3v3GsqbLMX+ADiYnQ+aCcaEyBJFeHELB+mR1SihaQpUGQHxzpiKU6qx0WfUkrCY3oZ4MTVkpuQfZ+jL/zuJ/K+jERyn2HpD8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E5rBmuSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E5rBmuSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEEEFC19424
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774226093;
	bh=PBCAtaQbGIcEjYzzaKNGn1wHxtMGR6ED4sw0Ai4vb5Q=;
	h=To:Subject:From:Date:From;
	b=E5rBmuSQYGpDZv8IdwKCRd3rTvq3MmiV5K7IjdnpyNfg15BuCp/PXuf01Qp+YS8Sg
	 qQjWITFUkAaD7y73lrC8I3LZ+ZagbXetzBRvYpjBE4FfBJNhDVxwJ7QcEHtCBvVLRv
	 Y2J8szhs7IwOxldc/tmACpic37UQan0bj8RtoGeAHCehnrTmIVMkowQN6LbC1Q9LX0
	 0sVClMm51uTsSXR8LplSXScDJg5ARiBPg0hse0vgUInwpPyxleGihXuLPMS+E9BSFj
	 n34j3S9hA9FBNyIbJSLkBQFlArAlYjfPC0X7OMhiFT8hGF50K7yPeCoCTE8IvcxNso
	 kg7C3vA+zGm2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AA0DD58CB9
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 00:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177422609359.2252.13737542743918670477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca352e92514fd18be95e101a22fd161bbf74faebdea030e005e9ea4dc273a085
Date: Mon, 23 Mar 2026 00:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774226093
