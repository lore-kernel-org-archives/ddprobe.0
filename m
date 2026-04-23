Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FC7E28B4FA
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776975454; cv=none; b=uHHgr85pwxws6Uqxq2bTIYK/HnvpEjhY+v86IWnl40GVmL5vWi3Z381qLRb3jVpS6fbHnYK6Gudw2BeAk/nNzuzjyX1cdSIlNc3cW35E399ySxDG/wLKoGAHTtGFz8JEyivKMQVuHd6BKNUX/HSZbgWGRCfTtBC15lUJ4r2jL1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776975454; c=relaxed/simple;
	bh=8XoUtKXtb3jBCP9/etLik5OJ7wYfHOcrJkhR9fKzg14=;
	h=To:Subject:From:Message-Id:Date; b=tRXuFoqxnmiDLQrtvurBhq5c3e8Qp+2JXwAoljY5GXnWEV8htW9KJh0WpuJDfyWv0+FcI0QuSbh90qZfFTQs/l22wQTt6O9Q4hXcNb4nbS0/5geDk7OjR1puN9SWHal3DGVnk5Hx09JBVXXPHMIxwb9a0x8pgf/8l0DQtkKYzCM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOsauyDh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOsauyDh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC68AC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776975453;
	bh=8XoUtKXtb3jBCP9/etLik5OJ7wYfHOcrJkhR9fKzg14=;
	h=To:Subject:From:Date:From;
	b=gOsauyDhLTIOW77hGhYvQLeKnO9hXeWTmkYsCgMQhcN7fAO9HQ1Y49z5iz3suj0Ck
	 NA8wamxct0fYhfkc0AoGllSvKDPRR9sTo9cxt5Hy3n+8SZzpR4ng/KvBu0YLxoN6Xp
	 ruQbahtpgWJnndT9YZx4XLBUF4o5hr2CBtgU4cL7glHrlNYK/NtzLsiV0S3R52uwsU
	 UTLHJR7wPq2k3t15SBKqiovaLCV2zLWSThmkDlqh6E2+/F7NWRAxdkZ3kY/C5saY+V
	 LfZRF8ichnMLJlrYdHxbgmGRKbYVCVsL3nBv5b1mwYmJWOH8xDtlWS8XgOLvDlLGTi
	 sqt3NsN3+NOCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E0DFDEE45
	for <ddprobe@lists.linux.dev>; Thu, 23 Apr 2026 20:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177697545368.12008.15574209877982264096.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61b26bf89d68a080a24b147b9c46633fa588102d9e6e12f830b2918ff408195f
Date: Thu, 23 Apr 2026 20:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776975453
