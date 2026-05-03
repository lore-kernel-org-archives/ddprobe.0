Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC04175A66
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777816654; cv=none; b=sifd8IPSa48vXeORKnFYO0XzrwK9eL4xTfs/x9iFl7U8wjwX9yJpKuC67ikHi1fqCo5cGg4s+B0TzHwY7T4hrabmaqT1O2AwXI9zo4rUD4dyNdDw4vHi4ct4ZJSgcuI5JEgLGpT/i51oKwvSv14oYo8Vs8gYNRV3X7y8m2/eVKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777816654; c=relaxed/simple;
	bh=5jR9z9tDc3HN77LcV4HfJv2hGNWO+TMsRBo3NBxWO/w=;
	h=To:Subject:From:Message-Id:Date; b=snD5i3tpBqZh/xUizFCdMtZa3gSbeTL76U2fz4bi33Vs1SgVnZR43fVRZnmmrw1F0SVMCt8pIteTEwX/SV9zBMgXT4TW7ibY9V2bzQx56Xny8lh5kI1DRafjR8Hv6xalP56FUyOqtkCh8aW32jnjQ/JIFdFcUpwGeWJO7Wx68KM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0yVUSye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0yVUSye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB60C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777816653;
	bh=5jR9z9tDc3HN77LcV4HfJv2hGNWO+TMsRBo3NBxWO/w=;
	h=To:Subject:From:Date:From;
	b=I0yVUSyeYVnO28aedT9fK6TwZ3HE3yiNgefmet3xsD/Tm+HinqSpRbSzV9iI3ZXnY
	 nFpgVS9BsrD7ZWP9lHtU1MTipnlGmiF5lt5xq5klgKe3MlwKC8v59DmihgAP0Qd/eW
	 sgP2wHNOVwC+Cc26civhjNMhXIAvHPqimJw5dSPL93fOS4JUu8KmF71Pzjur4q9YIY
	 g/jbM0S3PHkyS6c0K0jBWb45EpUw1ol8FuJbjXBJV1BM3VVD6iFoo5KGFsGxnJaXjZ
	 WLIAKg9flTKwae8GzIQMgZx7+4jOeznT6vOZoRlk+qSm7nadgV3BQINp2p/jRq1gzJ
	 P6qhH/hdnfIUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACFEFCD3426
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 13:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177781665368.27657.14290005848600483922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e294b9e843b61a5c91c7708f146b67a25c5d429da04e8e5e788050fc64e1b18a
Date: Sun, 03 May 2026 13:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777816653
