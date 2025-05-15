Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A21426A0D1
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747334394; cv=none; b=IKzjHIENYgdJjTSKp1r9WknydVaAbwASL2X7I7TazYPxVjabdK5FMqeU/yQY1AeieHpGIQVFmYgWUjNpKGmLt7Ve5CCMsnhYZf+rFNu+R20v6rwxrTEv8tush56UCamfKbHhv64byb2hwgXq+plldTne3jgdza8caL8pCkDVYUI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747334394; c=relaxed/simple;
	bh=M+/8myXotJ15ipGzZCfQAsGkZ2BJ3mSIs0u/G/egWDw=;
	h=To:Subject:From:Message-Id:Date; b=pKGMsHN6W1cjKXxtBMU4qbpCdNYxg+o3/lC+rULivutEIK6GvaO2jj7OHhl/r9dDhO97OcpyaC5FDVhsAzdXaWSMSn3QbogfoLgPSYasmxF5m7tOz0sJuG7AjISCu/3O2K6v1E7hrTQ8dGX5LFq0DBnJ8YN14OxDVWkUKcQsNOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ypf5X6Xg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ypf5X6Xg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747334393;
	bh=M+/8myXotJ15ipGzZCfQAsGkZ2BJ3mSIs0u/G/egWDw=;
	h=To:Subject:From:Date:From;
	b=Ypf5X6XgFb/s6xZUFPP+TCEAb6H1Mp+qBkF/W7Cwp2ZXJycw0VshphNQlrYudU2QR
	 F5bNr51ARpqpdaHqO+mUxb5ibDUPEJ2k+aoBzzRkTna2ncJCeRNotO0rxxfs9t4CKs
	 Gx18GDDgIOTsuictpFZdgPxYAeZugh8zXTZIJFyDTtaPkTRdLFkBV2TM/SW30SgVIU
	 /RMUeUnwrKgYZeEHT7M60YMU1MRH7s6OZlFWaeXsUWxOlChpS9lD1IakGE7p7IJReP
	 G5zn9p1Kqc13WFFj76kfLphgHymWSdRisGP0M+xJ8ZP8Nz2ecWEAqJek+qJmpNrJ1R
	 vW03BTZpKYmBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DCDC3ABDD
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174733439358.22731.8200930407629003918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624f5114eca886c505860895012d981653ee539e0496f0a292fce58817ba3325
Date: Thu, 15 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747334393
