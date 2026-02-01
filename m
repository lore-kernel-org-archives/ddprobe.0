Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA7226059D
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769963034; cv=none; b=W3c/9KKPxxvfIOXjXgkjcZCqst/EsyFuSMbdv6Y0A+yfZVxbN2fmfCYsxR2GVm3ZAcNy8YQa8hbN5WXQqulCDe9ZHTFimoyjYwMb8owurvfgg1zw6ZOEZQkskhIWTy+viUjm6+e56qf9Hs+fnlifuvM38j4Gs+2zGGFLF55/rMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769963034; c=relaxed/simple;
	bh=GkSP9fMJU4GQU5bsP5tPY82ScODouq/7O2mg5nbXkDM=;
	h=To:Subject:From:Message-Id:Date; b=jLhs9WZuoQUTmsWn+vcNZdTSR+mNIlItLdu5qlxGiBgyhKbM29HyJywG+SpTK4ZwDiMDINFMtdc6q1d7GMgZUP14Dkdyni3D52jWE3cfa/XPwp2VpSjcdRhHrBxI43GOEfLLPGxhEBRZXSFpJiDtgZW/hubNRGKcftHS7DQmfJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncTqq9dK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncTqq9dK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8947C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769963033;
	bh=GkSP9fMJU4GQU5bsP5tPY82ScODouq/7O2mg5nbXkDM=;
	h=To:Subject:From:Date:From;
	b=ncTqq9dKpqXFOgjnZN9CJKb9J/HqW2Jp6r/vVR7OAjdINGmGEokXnkKHkhD2GfujO
	 ZV4rlIBdAZj/Boo9qbo+2C7wc0tXimb5g4qZybnMvIPv3hZK/243RFqKkv1VB1xPe5
	 XnuetJz5QXvibV1NlnWPXDRgizO9FCPq/m+vRH2EC7sq4SWij0Pah2rJaq8rUn5mqU
	 BLFXJwqH3xyZ8b4Ok8kO4OIjxVFAAw0TB8tf2TI8pYeZgKQxvk0XnqMqphwoJ74ej9
	 FWHwb+QHWLno9FvuzGc+aoz+P4Gxe+iBGbBPg82r68MCfUtwMO5U1Hp+PPrx82c9D1
	 NOeiF0C2bKlxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D55E65298
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 16:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176996303359.13264.12284998270839252860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449d3c8efbb639f9e3745ef8768b9932d6d02f72e66dbc26a1e97414291d0174
Date: Sun, 01 Feb 2026 16:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769963033
