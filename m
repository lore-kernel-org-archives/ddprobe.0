Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424D315572C
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715022743; cv=none; b=fj2TsP0tmtooItGymUWyqgDtyPw3c9dl2BUbTWCdpPtr23yQ5vz/StyzUnepognAwre8z+gYMdWMIfsqHRvCdvO4KOMuXtqaSHYyqQ1ktCMDycT9U+NQ5yx/66vUDWOXb6j6SkToCyC3pBhf/FU9LW7jN15MY8s4eN+2R8k3psE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715022743; c=relaxed/simple;
	bh=Zn+vQ/g6KJuMlZODYeUJ3RqcKWlFNall3b4mjjEOfyw=;
	h=To:Subject:From:Message-Id:Date; b=cAvK7PIPz4uRkcY6CoAu8iN9y5O6Yxc802Rkd9yoK+brDlJDZz8Dq+lpG/Ar0s23GvuSTSfP4nEm9GVy77/pS+JK9NM6HZ2fVz2nSKS0zr85+QXbMiR31RPFBKBLqBeR/IQkKNYuAIAsAiAFa0AEQ2x1LQXCTJTq9AFD4pCUGjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W5ut1JIO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W5ut1JIO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D32EAC116B1
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715022742;
	bh=Zn+vQ/g6KJuMlZODYeUJ3RqcKWlFNall3b4mjjEOfyw=;
	h=To:Subject:From:Date:From;
	b=W5ut1JIOGQA0nDioX6L8ISiSA/3t71qhpy3hjDEODt2N/E6uqOLJwzimo9TZkmWKh
	 otYJocd5eEwnTKrNr7mAeRvvNMgC+6Q0cNPHWgVGqDLZHxcQi6tdQ3XN5g6tNBF8W1
	 gvaRaBnd1c1Dn4boT2z/eMPn8Uiox0k9Sv9bRiHGRE9kYxxaHIu4u5VK3RDvauoanr
	 BHz4GfDMdQZqYUL0SRtLVTmy4F9fMN8rHw6ovwOFS6kQIojMxiNKqLKM/SQYLu9Mjx
	 Fq+jG9WShkVIiEjifJgvSg+YSVVj1zI86GGriCzovjhMcXDsHwyuCnkGU5lJnACKz3
	 WbQpEhmVN96aQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCE59C25B4F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171502274276.9771.7686335605580195249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a453936630bc79154134996518b601f1a3d3603c20e08d0ec6e9ffd11f42be71
Date: Mon, 06 May 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715022742
