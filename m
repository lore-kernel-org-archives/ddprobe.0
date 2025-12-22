Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D59482EB
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766447034; cv=none; b=GYinkLmcwAe94ip5SiOezrl6r9xGNMg22zwBT1nvVTp1wVvlH7NsIDde6xJfq6Bbk5yPigcypnW+d7IhAS6GmLG+4oi/AABqjNzHHMlQq5T/ISf8jXKTrRg0xSUhNmnkw4hw/tm5TukNS1KeOSBy3yFTP/e54ErxVgIvERWx5Mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766447034; c=relaxed/simple;
	bh=+mny8EdoCPfvB+mVDzCu31u/HkSZX7YEC3Hu0iULlAY=;
	h=To:Subject:From:Message-Id:Date; b=ZNHFgjxsNAEssNelrtMg2EKDOjnAoY0FneEo6y3aqVVekaoDkQqYB+JwtUe0EGYBb0OeVo92wkgMIP8JbVZaka00gKEj3DEqUHV8B3ZW2Ac27j6ZPZtcPpWxAIAZXbUGqtARrK1vGvrLPSX2jSYHI9SknAOc1uFX4lLOmZhTBkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeeEcuvd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeeEcuvd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20FDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766447033;
	bh=+mny8EdoCPfvB+mVDzCu31u/HkSZX7YEC3Hu0iULlAY=;
	h=To:Subject:From:Date:From;
	b=SeeEcuvdxHLf/lFkF8X1TlSu12S/VU+7oDpAwud47ekGXObJbCPSDijyGm6oi8VbX
	 5MJ1wSNUcaj4FbNTRG+wgF4Cx0y5GRiLCzDTWIgrGsIOFsIjw/99Xj+rS7zLwiHOL+
	 dwDw8mPQ5x5KoiQrQDBt+HBq9z0im/HQDqYevCzl+UFEloJbny0ucO3+1RRwm/6YBR
	 ZAE0OwVF9s1hNZoHq6vE9D++vDOgv0gR0jp8jcoRC2tCvDQLFlROtl/ey02IZbHOtw
	 ob2mEAwoBtn7WQ51Uk6JN+Dlr0wc2Inq09IdCoPTDREwJGfQqLya+Jzt+I7TIo/52k
	 BHkYNA7VfZrTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91204E6B25B
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176644703358.2448.13392049892271216701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b24768ebeb4b71f88be35a7e231b32cf15f9a480da21ee3ce62992f55d8406d
Date: Mon, 22 Dec 2025 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766447033
