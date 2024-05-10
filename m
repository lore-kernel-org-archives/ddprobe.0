Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541B81635A9
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715322143; cv=none; b=e+fyIatXLqsMIPL9X0Y3mRy5psVJTTFRg3yFobgQJUMhs56Tf3xmSrSb2EZWBjD3DTff9tm6BzMnOp8uMz3aFWx5bYZjA6wHwMMCZ1g8fJP6/0ElGWLK4jX472ROzqajMjDJZMI2jf1yhRieS/XyYrjsySbGetEq7XzuSbU5/RQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715322143; c=relaxed/simple;
	bh=Cwx6gFA8lBy7I4zq3YnMFToRjGoKXmtPk0bMOlxwfP0=;
	h=To:Subject:From:Message-Id:Date; b=K2kYujy8nn6ennnBxI3ywPYetH89nudjbVzPnqL3OHP/xZDAhsxFNUw7VcGtNRnKPe7pSdYxrKn3iSR5hOaWITtwz+Dr4rT4BgIpk2oyIPyeyd1Fy2XEFDB/r8rx+TI9EjSmI0xp+jsKgAq/2a04kMewgR8yA5g75L8+LMir5io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j5tcTAYb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j5tcTAYb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEF25C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715322143;
	bh=Cwx6gFA8lBy7I4zq3YnMFToRjGoKXmtPk0bMOlxwfP0=;
	h=To:Subject:From:Date:From;
	b=j5tcTAYbJzDGlwPlBytSnjtQaUw0e55JZhTPBJeoDggkSkAqUpyr/A4j9ceXNcC1z
	 japc8JfZroyB0gT1bMa8w0/06JQdraXoymDtZ3kZeEx6X/Y3dOK306An/KNhsw3Snr
	 wvlNM/Ee3renUgzPwgt9yleRnbRS8a/D7l40z9cucwOAXSSThrkr+UNOV4GiBww2dz
	 UmFwZqBRO8vNXC4UwkZ+kfbx8pPf8yh3L9V/eC6gJlsr05yI21PcboBjlPofpA50K0
	 sfGoQXL3v9rSf1Uv4fm5xA8umnC0Ue7eOSySL4fMAFC/iIBteALjCZ0oy0jTM9FqzA
	 wITcZgSAIyROg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C192FC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 06:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171532214278.2760.16944009840477025256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ddf28debcca2ced9b852a44a5fd7eec13d532654410e4f260d7ed2826170ced
Date: Fri, 10 May 2024 06:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715322142
