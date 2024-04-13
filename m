Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6852957300
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713044964; cv=none; b=bOdSIsJBztkU/Su29Q71w8W52SCLVNjhWo5Jj6s8xxzyLaYfCSLyd0xouH0EWlQJp7PCi1ps07f9cEkG3pf+TGkGfqLkcxF/tDTqtDY4asF+jIRVylRtNA0xVUxgcHF4UmVN+MGJ78l4JCPxW4bSN7oz7T+Nz5N0a/hun2uh418=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713044964; c=relaxed/simple;
	bh=yLlaYyHJU/EqFdt3O12k7PqXhq/QRdxV94LbGzuOEsU=;
	h=To:Subject:From:Message-Id:Date; b=WNxzfHOBA4YoYIRbmXNd4WY4ywH4cbiXm6SFRBbBI9Fh6xQnxvbHlpDJqgLWVKLUDFB3TGthqRwlY3bTMG3N8ttiVQkA2Tyfph4qdWZatINEVRH2I0b3ateZXk9zNs8wRizrOoh8x8aLVldNCNuUpNw/ATrLd8LwIhy55dr+koY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TfzPH++s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TfzPH++s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1D04C113CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713044963;
	bh=yLlaYyHJU/EqFdt3O12k7PqXhq/QRdxV94LbGzuOEsU=;
	h=To:Subject:From:Date:From;
	b=TfzPH++sxxBwxv/M82B8hGBcp+H/Kk2wZl5QVAqoWbf9Upvh3eIv3uRf7XntfneVl
	 bTg/VhD6/aY64A2eG9j9ZvXRv5R+9E3KmJ0Zx/2MwR6sD66RFxhJw8Do6Nm3vyQtMc
	 Kvz/Zabnq5LgIihjUBKvif/5IKwqpFR3S2gSeimBXN7SccoOLpMbpo1ZZRHLgp75+G
	 eq8bn75cF6IZ4o9rXv12WBT1num3dELxb/vteK4nibcbTmP3TeAFrrgz/byAMeExwT
	 jT3ZbC96B+5ON+u0pZT/IvqCEuQwRiUsf1dKBvfRXgi86gewK6MZm1vgVZ/XgTq2Bf
	 x+9Ji51QO37Vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFD13C4345F
	for <ddprobe@lists.linux.dev>; Sat, 13 Apr 2024 21:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171304496275.10198.8197037342501121253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a356486be7563a74de7ab3a1123a9145d9d1d9f0ded5888084bd1ea952cb16f
Date: Sat, 13 Apr 2024 21:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713044962
