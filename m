Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49D8363CC
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bS143coL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF5DBC433C7
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:17:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1696583828;
	bh=CURWph7/US61pJLI5++SpyuWif3suSEmg3QtdPcmPMk=;
	h=To:Subject:From:Date:From;
	b=bS143coLaLiC66d4hKeu+TYI4d+Ij+EHpbStcWwRoCvAFaw0qxW5ke7+0Fj1pJJe1
	 cu/sXrjf6bFkQZiNsyXYRTiYezeutmA84nRPJnAGJ5hkB9V0+CH4NBqPjvJWX2GABj
	 BoWUYPMF81pwHH0YliIuIAr9+EKJQZHSmoaNynlkr89OsqTOqui5boEaaXMp2vQJ3c
	 LHe9hryidMMS4bT0ZbwkRmvoU/YgkzjwqItKZpKMhZ91bx+h0VXJA3e1AmMWjaukYe
	 Mi9sN8YN5KgQFiBKA54TVNm0AJjuKw++xBC/LB/K4gRa95QLGNmZQdxzWuQopy0VYz
	 E2qF77bXcB88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0FF8E92FFB
	for <ddprobe@lists.linux.dev>; Fri,  6 Oct 2023 09:17:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169658382871.16425.12692582808460992997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86caaa2d9a524b83bbdfe9cf573c018394247debe2740571b59b122a92b02ae4
Date: Fri, 06 Oct 2023 09:17:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1696583828
