Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAB035DA77
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772837694; cv=none; b=YIGwNPjP4SdaihCJpvEjuNqqnBZVjbUe1e1q/4uo39lnUu1T+S9IMfMh+fQxoJy9PTJD1d6s3ZckBTXAHrWa8L/q4iAhZ9sdYIK6s7/75NqcEpEGygJxMmscl6BkUEo6n9GkbiT6RgKxj3ioiNm9aOK9yDC4QRdH5VeiK2h+OEk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772837694; c=relaxed/simple;
	bh=OCpC4b0ty+6zsNYYFrSS+zC5PwB8abl60M3DekkLluQ=;
	h=To:Subject:From:Message-Id:Date; b=J/Htd3d3FD4YxLkMaVzZi//xNGDI4FDv60IAOMGek1zNOMmoKhnCjUHVYQADoYkP7ybkyyTQryp3px/yDYsXBWrIG4pPGoo/vSjXCRzuvgeFDrVypmij/uNzkqABqyIXxMvmw+X3g2CXWllJp9LlTstuQQqKUr8Pzy/wTnY9U7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tOITMHAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tOITMHAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5539C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772837693;
	bh=OCpC4b0ty+6zsNYYFrSS+zC5PwB8abl60M3DekkLluQ=;
	h=To:Subject:From:Date:From;
	b=tOITMHAPGa1U2pKOKptFwcxlWgqfxgG6TpylEDoXKK9kf5PLOrFHc2d4NDKFOAowB
	 UB7tDLbTMm0gB83BsrDjcN2M1+iTV82Hg8LR3/SvL6LdYoV+wvj+VXrFdn7pahfmlH
	 UV40c/+PRExR1waJicU39e0/3xLm89AGxVHlguVlkaXDuTR0KBwvPxmk0yRmYxW1aP
	 TiD900D4QbFfsfruBuhnBsRFyWItPKqgtKMl9XacSBHIjARP78iXUk0e0DFm/8x2od
	 goAephommw+nLJ0lwnSb8JEiRlrKmy+4VdlALlPxKI63bqhVdg8wzYD34MJZBkquCH
	 ClySccqOgDnBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CC92F5141C
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 22:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177283769363.3999.1485374384846197854.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc58dbde42b4e498defa3a772b209e135ae3bfd2105db6d65f9098b936990584
Date: Fri, 06 Mar 2026 22:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772837693
