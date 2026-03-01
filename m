Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BEC430B8E
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772390694; cv=none; b=Frd72g7q+wgPi/oWft9nPckbwUQYa7R2O0lRm6ypuHg3aEreBzYTB4eVtxm5LuCLnPU3pIMEiicxMCNykyo+j74qDKiuf/iCkaTXBBHDIueOW2bDpFGfESrYAgYJq4iaAu5jIsvkLd5xK4JR1SAk6RcZw9kA9rBq+LjoBbUUCwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772390694; c=relaxed/simple;
	bh=gE0rGSbwR9/DjryGWy5Qsu9w3LBAa9M+JR/TBOfbhxM=;
	h=To:Subject:From:Message-Id:Date; b=aF3AEQg4nmJzGPe0pV99gqizP734boI3W8teJ7AR6QNY6GHbTLefDfTz4yvrPREPy6xB+ndbc6PMXdecZPXUDHvOeavcU5HyS533rHWTn5Ycj47C5T/ajog1irIhbn7J7ZUuJw9cuLwZDcRj42AmkmGEemBsiLmtS1B7mMFDFrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLpyBh6y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLpyBh6y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA26DC116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772390693;
	bh=gE0rGSbwR9/DjryGWy5Qsu9w3LBAa9M+JR/TBOfbhxM=;
	h=To:Subject:From:Date:From;
	b=FLpyBh6yv7pr4R4+MK2ifyHdjZzKVAld4qKF1fF/SWi4yEH+9JyZV3m3OoWAOAqEp
	 8bd2PJfSZHvgmp8OW9PgIj+vKECrYH0LoOWgNGn+wRidgW/dF67iHCtyy3dF+Q3K0K
	 rGCwWZQiZhTdCvBk7kHQuDq0lgfdBz5ukA8f3tcq1URjY9kHqZ71ISKENcyqzDUU2/
	 s9gFj75h65HVcSezpQUYSCqe3PXjMqxT/9gRqfoDJ69J1TwZHGOvOqq9bGUXhigkDo
	 3x6MCLeyepqc4QPqKZp/WQgF7/ZH3FZAIPHS0mRl4ZwHjRVlP04YH1LWTn14wu4fR7
	 bv9ctq1I0hWbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A15D6FD0062
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239069361.20752.3580236814893534361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f2df0d839b8a4be4c9003967f25002520e890db646ac3ebd2415465a5ab736
Date: Sun, 01 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772390693
