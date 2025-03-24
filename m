Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48F7618A6C1
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742818794; cv=none; b=UhUfk7nBztp0iZUJ+j8eD45zo9zDzXIdCE8Ks8jS3n31XIp/W44ztFoOGJ8P79e+MRs5Vldrjmq1+85+HYPxjdsYwv7f2i0w3UQyu4VKgqkLETSHij1uZ4mcgWlvahaYGXJo2iCCid2+DHHMZOabioXZHZPlyOhAHqAiSKOBdJg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742818794; c=relaxed/simple;
	bh=MnQUDMDRHwJqD/O4Uz/Cf1cVri+90HB9zsIs1hcwAHQ=;
	h=To:Subject:From:Message-Id:Date; b=si0HLkGEjAMGvoVtARO3watnFk0hyBLs/U0CFouUpIWysmQ3HLF+sJgJG5L8G8wZWvzkpHDDFD5OX7HsPpSVj8RbVWLjPkP8ylU44PObO0K3s4Cv/6b2WK6oHrWFyzxHTo0Zt/pgzU2t24ZphetDrC4Gpmub+q6XdONm1AQzcF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MfzZfJmT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MfzZfJmT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B96ACC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742818793;
	bh=MnQUDMDRHwJqD/O4Uz/Cf1cVri+90HB9zsIs1hcwAHQ=;
	h=To:Subject:From:Date:From;
	b=MfzZfJmTAbl6+CXh2n+NcFUdhL4DPEy9bWGuHSlGe97qdp9EBPvWNvs4DhurSggGM
	 DR3FXbyMf3XAmfegrvV5mj+R+GTYD8Ix8aF9lvehSLXTstyn4e7TEvn4brt4rp8Fol
	 lNT+LLoKmyvSPS4xE3UDygwTxkZQBgoeVuirUmV6Ff7bblQCi/nxKmKTlCl7eP/kKq
	 VWaHtthhFrChxWM3ToUa2fMRGZWNphTwu5lB0Tfd4udoSUyZAypn2UyNMd9Waq4dZ0
	 lLDqJAyuCdtJiYxxRp205DnOgMUS5qr/yhYZPMK8//xA7gAbsu99olgwq+ldgNUkZt
	 YH7nFlf5mdfcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F01FC36002
	for <ddprobe@lists.linux.dev>; Mon, 24 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174281879363.6099.8161742708654220124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4f6338f42fdcb003c1c6274de9dd96e669d46ffdf46cc94b7858a00ec7e44d4
Date: Mon, 24 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742818793
