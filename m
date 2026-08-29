Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B46581AA8
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787984434; cv=none; b=OLvbYV6IgwleyBBPa/P8dwE7UQgd5/yOVepmCqNOi7Mhnhf4IvsFLs5YwCxkw6k3Cw10u9w4wqxiG2B+fd/SOwpL7v5n3cXEZuVAFR35TCisxgwGdt9/Sjv02GxF+Xbzu2N07UHamthGnmxqeejp1UeLT9rH6ovyhyM5SxMz4fY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787984434; c=relaxed/simple;
	bh=zQeb9DHqC+EDiLUFHr5qBOphmzKyJxxgpzZbB90C9PY=;
	h=To:Subject:From:Message-Id:Date; b=AZ4mWcc+xOrxvrKtu02z3fwzdvMD3g/37jghRHJe+CKFiHvAocSIgnGnikp49VN2bBaricMQ+QxLyPH1SzrD/be0vqDfWCfFsA70BNT+g1XcwKZFP/3Zi05CDBkBNoA2Wl1jqqF3xwL/ov0zh0WgC+UFhM+H/37z/VstN6QErrw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kHMmEtnR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kHMmEtnR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2434C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787984433;
	bh=zQeb9DHqC+EDiLUFHr5qBOphmzKyJxxgpzZbB90C9PY=;
	h=To:Subject:From:Date:From;
	b=kHMmEtnR7Ri8mnZrTAD9FGG/8EwDOUEJh20nlvUpFjPv8RUU4w3EbeYcnjEy1+c6l
	 xw5DxAGRv5UBiQ+2u5xBWjYvPpTjvXa2JqG1kIk2jIPMhJTVAku37lI88Ljyq8DMeX
	 /RFZPygiRaiBiwrhLFnvgEWWwZTk50q7EWdAsf9V7Ta37GxM8xTxYP/TDLr8Nvw0SO
	 WEHt1RpPaEMdV1XUhUjJiVIvcJWAHMo9HtJ3/7jAQqW4AlxsNlF60LklUBU2PFZLmv
	 dgFLvgWlhGxSnviNlwzdXK7qMsME2NOIJCqBREgn1M4jcdDQuxj6c9QBRqgB5NRWHX
	 RbBapQbjDMkyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E2EC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178798443368.29458.4036416321095421640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f1274f9d394a5c700c90858a3cdf37eff93e0df942fbc8bf435da8da8e3e39
Date: Sat, 29 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787984433
