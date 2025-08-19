Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F1E2322549
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755599394; cv=none; b=MHmfMFy0kmFWXr5p+a1LKZmTOX6JEwGt1vvfhQ6qtqTEGDltREW714aXmWsfIWFnuZ0oE1fFpdXxiIhB6yTvXc7DnrXsW6RIAwBNGCHDACIpsCyxsF2Lzj/707Y04wmE+E9c2c6/1z9/GiKiU9rTOGnSeeIcnBT2FBaM3PxTGuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755599394; c=relaxed/simple;
	bh=816kXaeA+4uBqFDFbcS+VXX/zNHfqJRC3zmm6ikq2ZY=;
	h=To:Subject:From:Message-Id:Date; b=obGYUuAkNs6wto3IPuQ4gy/O/wjJDHKSXXNUFjhI/qsH7bBFq6o2EueR/GFDzqJjWipfm61IY12MYut57pIV1ALSO1K5Or6aYwaMV6sX3MCDvxOk42GeGcCHCvCTJgWkEnJSVLhoFG49cWNBcSO2/LrNFPPYqGSG1hseSJXMb3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKNNPHUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKNNPHUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD3EC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755599393;
	bh=816kXaeA+4uBqFDFbcS+VXX/zNHfqJRC3zmm6ikq2ZY=;
	h=To:Subject:From:Date:From;
	b=OKNNPHUx9mp2B48HvPnURPp095ix16zBrdhyEGeJzb2wPKvs9exz3bbtAbMdO8Ec5
	 7S1WfXZpcxphgBRhRy/cbnF8r6MGAIDolpeTWwreIKBw6d/cVCErIL54K+hXlJJAeG
	 0OqVYy8eTznKOtSHhFThR9BxOav+nskE/jvb6JRIbJyCG89SMsxuxPoUK0YpJ3+ebL
	 z0KbA2cl5HbVU0HuYfjd22IJ12g42gSbnkpDvXhO5PKWKoQHkP26owhaF+2fywr13H
	 k0UMqM8v5xIrJMBjMlDfaUEsk/5+MkUcheRyieBBhS6C7f/Sl+766nu6PoKjDW9i1V
	 maAtMdFGJVUFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E05BCA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559939357.29379.13132359778855970832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfff60ab317ad08534251735d17979b79ddfd6988dafefdb1db03847fa3567c7
Date: Tue, 19 Aug 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755599393
