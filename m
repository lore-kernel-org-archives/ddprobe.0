Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C13AB2C21E0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755025793; cv=none; b=URjuaV86L2nVsMrto+6nPo59CA+CnCXTRwl5qh2vRcCxJ0OPHmso69nuTya+3cPldBU8W0nRuqb3Hofkvp88ZQsgZSyhcTzp1o2GMPVB3WaI8rBVRKDGLPJVYmXaXYBNEOXepQ2LIvzpjj/BOD0fVdft794XI5R+LebMXHtJvko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755025793; c=relaxed/simple;
	bh=IlifiI3ef4lwY0dk1/XO3gdPYm+XfelA7Z/DbIK9yog=;
	h=To:Subject:From:Message-Id:Date; b=gdBP1m+BpHt5u+BQNIteLxtOm2tXXcux3HolckYI1faCgz5ZA0Azep9rwYnpmZJUjeVAqhoX5G+VHlA3XadG6y5DXqGGtazu4bDxhj+rzM9qiJyB4wqEVwYxGq/sz8/jA69+UKiyATOUDLtd3OIbMJfJQ8zN6HJCVeYzmf+3Vcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJB3bPO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJB3bPO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A53BBC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755025793;
	bh=IlifiI3ef4lwY0dk1/XO3gdPYm+XfelA7Z/DbIK9yog=;
	h=To:Subject:From:Date:From;
	b=fJB3bPO3FQF9nRJJC2wF4Yq3WVkl32UtGhRmqhIAiKSS2WJr81Yc12/yP/NllroUx
	 VpmTjp3YDm64C00Ztw7hy04Kf6c5kHQeVUfOPnwj7mtMNURJiDD+A9IKD0U4GJJE7t
	 Axh8JYl9fMOBKLh2FjEAB9JbP1U2m9xJyzeoLwLLzhyqCVSblsTEXoND0gKEbW6UGC
	 yTH45R8STySUn0F/IUuFOTrdREYS95racyDGdHXDez/GA0q1qVjcDhLcw/v0dOTMvV
	 ZxRxl2/EohZWr2W5dg9Icn1wkL2v8395r94r2SIXVWAcVELAzeSk0IQXo2S1gVEr+8
	 /5fCETdhXOEKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9337DCA0EC4
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175502579358.22394.17431214168353640990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b40f6ffb183073b6127c9d3c1484460d9b12567b795003429b55d8b485b4542b
Date: Tue, 12 Aug 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755025793
