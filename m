Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E48C139CEB
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714716743; cv=none; b=Tk82SSIiBNro9JGMuZZiH8xQEnb0sDCKGViPvi5+r44X794RczHl8SYOcuEFEizgy2xqgoQdCjPrACkNVGEcsMD1Jle/nR/exh027xSN0yMDHhS/9giyoWgkM2/MqKTLnZHQzL8aqyQ0je1RyL0rlk2yRtckIbmhol2zYk+BtOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714716743; c=relaxed/simple;
	bh=FoTJ5jX9JFZmPh9QW4WZtIeBPr+7G98lbOA85Aezo0U=;
	h=To:Subject:From:Message-Id:Date; b=QUgswe15RC/5kL0T3KHwpZLCHA+fRoOwmx/MaQVnvam3+a82Iz33CVZCAByj1YE0b0+dYNOR6WxMcHyvlBeacPOF6lv30clC3DdOs9XcG8dXvLDd08X8LKwG+yhTVZY/hgieicXIM4GAqnFRpOqxSzhhPj5LUkJbwuyCui51HeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLZ3gDDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLZ3gDDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE1E4C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714716742;
	bh=FoTJ5jX9JFZmPh9QW4WZtIeBPr+7G98lbOA85Aezo0U=;
	h=To:Subject:From:Date:From;
	b=dLZ3gDDhAKL7HK2yeSnGpnPqRdKQFA9ZwaL/0P6ZLCL/XVy118YvAJ/hZqyYbTI0e
	 IjX3lmuy284I+wAcBafVOA3ltTVnkKDUtwmEtvn4iYh8+feXU7B9a6La8BSHR+kNle
	 qf2qTP8dOhMw+FznPgJPUqpEF7jfeL14Vp2K+ZU3TchOB0MpnCa64ZOnYyDF1rQcbT
	 RKA3hc3me/qphhVgELe1kAbN3zil0vaiXrFP7QBKGvPkw1WkAXTTjdvCZpkPD/H6/H
	 68TuKY+zxZz9uqUaDnlGra7quMXAfnuPwLU4uULYoggGrRJjyWAVDZ8QIjussfxprh
	 df4fDXdhKcsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB243C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 06:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171471674280.14638.3638878263452319128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db5df608059104c6b86695671947873c0f3379231c624fbc495f372cdac78b6
Date: Fri, 03 May 2024 06:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714716742
