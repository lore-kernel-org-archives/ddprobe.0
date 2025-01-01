Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BABEBA33
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735703754; cv=none; b=UrPiobWVuLJKzDb8gmq7+i052IXeXcVahplBCQXy8IW0F1Q7WofUdi2Zqpsr7DligapNqZKzfoyAujrDPiKiHIxDBvNY9gQdK/C++TBCv8JV4voMNtO7hSWYNuTe0Zd5YF0wNZ9+GYs34A1pWURpa32OzQuObv90jlb8DGygXoA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735703754; c=relaxed/simple;
	bh=4oVbnuAj8wqVEzP2YwPnoMjhZmEEATheTSXyBgg1v80=;
	h=To:Subject:From:Message-Id:Date; b=rM6ngIsokmnZgtt7NpBRHRQKLB9k8lJ6ZQ3/0UCqkY9ZFWN7sNnvUDUbiQ8opRFfKnIFWprAy8haFirG0TVmdMuI5mFsJvJpwrjSupF2/nN9bkAe6xbXxNUS3Gui4mI2vbpgQoT8NnwvsJwJpdI0xrwYoKhEs1aQNTT2eVwGqNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dcYNkSzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dcYNkSzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B706DC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735703753;
	bh=4oVbnuAj8wqVEzP2YwPnoMjhZmEEATheTSXyBgg1v80=;
	h=To:Subject:From:Date:From;
	b=dcYNkSzWMgL9R0OEeg1+rwCtYWN080NRQVWGynMbHGh/3xOji+TayxrQkY05+hajv
	 0y2khKLPMb1Qz5dh+ceIE7VtImIYQE6svEGvmtW+HqT8I3Euz+5U2SHXE59dHaW8jo
	 j1x4WXvSwGjnQmhSx4YSETYYPgZekN9CC3AuxoBmDEkNrhynRmQtKtpKsb1H7CA/X2
	 l++HSWTP0hhf2aGHkJK7xDM2ZmeytMtL0M2zM2gpoGXLaO2TGZdlW6yGmVW+D5kVFB
	 drlzCmFgGU6/ABlnEFyiuVblWUqfNViL3iJ6KW+1sgLPJE7gXOaPxq+jIHM+yebR/j
	 Fvq0oO2t9/riQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EDE8E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173570375362.3835.4874472203353479793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2f0c4978a5b421021666966199018b497910f926f39fed725249c5211c6df88
Date: Wed, 01 Jan 2025 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735703753
