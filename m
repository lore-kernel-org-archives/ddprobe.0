Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 144CA40DFBD
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776671854; cv=none; b=mTyy3F+dZ6fIeI5JVLs4Q2aCAgCJfOQYXXHXi0r8PKXm+YXuYBWdx0oK4AK76H2L8dABvc4mW29UzCX5aPjD/a6Q9cz70ufXsQnH5Vo0sifCJZJX2kJWyTyHiuZfuUKbdgXB8S0I5gKFC4MXFfH1spbJ8O+wYsPguu/0KOuDHH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776671854; c=relaxed/simple;
	bh=dEL/kYTwqWRWrkO2vMQ9SgnTQEYezRgvoYY99qB314Y=;
	h=To:Subject:From:Message-Id:Date; b=ecVMTheSHRhqGw/79xyIQlL7ZgiYsAvFPY49Fp1gBX3VhVuYc1uJcpu8V4fTSb/IbQQM2ZRuamXZEHGiZ5lOGlCMGFN0j5PBk2vdldVxYGjShgSfZLnDsONlMA1AercH/GLf+o4qtXfnVN2nUAM+uLOSu1Srdk+wHXVaIIxn4QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZHdLIVpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZHdLIVpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B80C3C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776671853;
	bh=dEL/kYTwqWRWrkO2vMQ9SgnTQEYezRgvoYY99qB314Y=;
	h=To:Subject:From:Date:From;
	b=ZHdLIVpNJvmsq5ul44i/DinLxccLFmAzIgfWT/uvDGyzXMbEEoSQfnaLqLr4ld/Gb
	 ipwCEs/egAtT2EFZ4ulh0Sn2Vg2CIoR5/8n8w23jGXJLOwqN/ydBsS4FSZP1HAi/6X
	 +90cYSERowsVhfhnS9tAUa50iL/vzqqtnZds2A4WugQ95x3Ai8rrg84cY2EztjGiwI
	 pzwxAJJ5ywm18mtMnSgRTIiwqNiCth+yk2wbeL5q+GWOII9MJMfu9P8NqR8Tzw16Vo
	 KZ9KMbb5f041vaEiaONFzwklxxnqvBfMa+gxT9Lg3XkiOwDGtfdh0Xh3nLrriTr8/f
	 XHr/aJZ0XwGAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A980FF36C51
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177667185368.30923.12437413853102569877.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c2358d612c11e0137b82904078f5ce3ae70ce5eb1dfdfe406d0bef190d15926
Date: Mon, 20 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776671853
