Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C9F33446AB
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771437294; cv=none; b=QVYDssJaozrHzqVoQhBrhcC5ZrHLEQ/cXIp0oDVD8pNr74PMbzHqEoQMoFek3+8q+BezTCh397TV7qlaoi1Ax73IVYRTCr+yc+pgXWVZW6TPEWDCBuooaErlbp9lfMbOddK14HvNEY4Zk/qP9V/2OVGuqzop3vO2FgL3/qcUH68=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771437294; c=relaxed/simple;
	bh=70O6E5L8F9I3nqWMaYZZAJPlrYkgR8AyAEita+QPt48=;
	h=To:Subject:From:Message-Id:Date; b=ozdhApViEU0Yg/KLY+oJIxC3yR/ZxsuEg4Nm9PxSS4P5wP5t3eBZ0J2Y6BkP+7mC4v8Wi/7PDAyN++jYEosUfTHtXNgUrordQvISNbFfJJJgGrjQEhtI/33fz7dba41yww7RSqpevkFfe38l4bu522AJSDSB4mm0SruwMnYjpzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIQcbW1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIQcbW1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CF6C19424
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771437293;
	bh=70O6E5L8F9I3nqWMaYZZAJPlrYkgR8AyAEita+QPt48=;
	h=To:Subject:From:Date:From;
	b=QIQcbW1v5boiqIpppd4UXYRG70A19n7WPUQA7rNail97zDZNKZSAdhFHDZzyWZtp9
	 yu/dNX5HQdtu5/NoOODL4ag7F9o1JHF0XKuRplLp+43bSSftZyqSB3s0d2g+/qO8xO
	 gQql16vw3qL3eDECwIiYITtC6hoBEYzQjQBWnaTusyVZiWNSge0zCUCDj96QVGF2vq
	 YdaLD/4RpJsyYr00B1OeJs0u2TjrOl0u5IsfllZzwPR9YFMpi/noSz+GbG9zcWm4sO
	 QOZCGe6ENQcIUfRj+cRwk5OQ3/Hp6uNsTFje7+KZ8D1tKvOi5mj6+1OUSX+52k1ZfY
	 w4QxEFJs1wDKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B011E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177143729360.4927.16895780693006095020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04d67ca869f1ffaeaff48a719099419cf4a3a150d29fc2e35c6dd4f7d9b64611
Date: Wed, 18 Feb 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771437293
