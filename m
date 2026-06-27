Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF4732B101
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782574714; cv=none; b=Yn63mtyUg86g2CJw3qWKIPhXQp7Oqjzt5w5i8JAebp3JgswbU9+/m6dke4Rqs3h0iDcxCl1vFkaj/pLbb5pFPgpRo6ljwpirl5Zs4AjRsI4P20vMWG8FEfQVdrs1B1TaY6lde4HFh/y1YuaKIdV+y+9F41FWGeI8uLyDrNIZEgY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782574714; c=relaxed/simple;
	bh=a+pWrh7I+XzkCuYH8OEcnkw6O+ylUY149A8/CIuirKs=;
	h=To:Subject:From:Message-Id:Date; b=YG3HQGkZmwbX7PeG7UTpBR486UMmVRze9LFRTzJD8mccQIDSHyldYLNO66eGe6NBQQwAHIEFj3UHnxVJFOA1jfVfND3eeldA2dylLSDq59s9mUCnPChF9eEHgMaESvgLm8R9WabGoybCusvlaaGqdJuYUbLLoQadlVQZ+av9Xu8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lt9XGzHE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lt9XGzHE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6BCEC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782574713;
	bh=a+pWrh7I+XzkCuYH8OEcnkw6O+ylUY149A8/CIuirKs=;
	h=To:Subject:From:Date:From;
	b=Lt9XGzHEia2ldgdWKrPCcNI/38xEUtNflM+xYLyBkODCvq6r/D1m2WotUkjXPt4g5
	 7P4JuSRPe/rptUO4S95XeC9+XJrpuONXKdRGhFk4YutnQ4Fmj+Ax6IPTNyx7jzqT9r
	 dGk7kaEBMtHJWJt6NlZyGv65HWc80deNMGizMxWeHFqoi6WijM9opcZ3xUFBYL0CIX
	 ZrxA7q5rINq5BiOsMbpjEWV465mvzqks3pUXePG6CyMBDAuTsEopxSCnVs/yGj3rQj
	 hG5y//nsBqj8R//PsD4ADnYk2UwAoHQyr1uWPuv01fjQ+hkeoNyqSSkSfbHaLdLX9B
	 o2ybCa4Qgqe1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE2A1C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257471372.28818.5213347431636743595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e08a8f357c5edb98cf18def8608642600237075598eb9eebf880e77e27f2f8e4
Date: Sat, 27 Jun 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782574713
