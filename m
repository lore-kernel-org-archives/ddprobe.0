Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E356241676
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743668395; cv=none; b=SunFUCLRerUbXQ7DnzJUDzIqWk7UaoO0wi1+Y9A697mdUvcF/lNiEzba7l45LY5n4RozG9P4VNRs/7YlhRJz5/f/Z1hbXF6zphmpekethMBbd8XS+wlvlrkMuauh7I8tiv+E6XGP13UWGSM/qDopjGklx9rr0P8O8hW+Y/nawVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743668395; c=relaxed/simple;
	bh=gSvg2DgIQMixt/8/F2KJjr9B5AlZPn+Y2azEDEO1UHU=;
	h=To:Subject:From:Message-Id:Date; b=I1NWL30d7zS/g6COR7bG3vPFZYKTtxWpKqDVscqjDYI5C5DnRRxojbTd9gNTlH8kqmapCFP0UBlEq7pZYUpsMIYPWHRieWLRMpovo9a1iaqDF7qDEqK07P1NBDhF5ueQSg0vujdIROQJjAb51ZfuZWP8RHUvdAvIrkq83DGdZsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nYKsfw1i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nYKsfw1i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE2A9C4CEE8
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743668393;
	bh=gSvg2DgIQMixt/8/F2KJjr9B5AlZPn+Y2azEDEO1UHU=;
	h=To:Subject:From:Date:From;
	b=nYKsfw1iQ4UkYP/07L2pbaaNhC1EPesZsRs0EgWplBK+QnqVk/oMpoJ3MqFzT0/NT
	 NDjJkhwiEbCHA7nCx8p80Gz6iOQRvF7F+LQWBye5+FK8/wwpyZg1B9H5NXLajnKZ5/
	 VMvsR81VygeIrmztQVAtMtVnzKt26DqYWQd95ir6m3Iu0NvOARKWJN7qmc8Ts8v4jO
	 /m25nWWylwMjjkmzvrvzzH+V/NmdoOGh2O6H/LCYVtgGg2GXImZ7Tx1Sop0VPVakoD
	 MSSrGijrMysw+EjtqO+98AwHqY7ZADngxrHEMzlWwCJs9jRIuaBBK7PQG7O6gzQv+T
	 2Q/3sXetlLXXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99BBCC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174366839362.17439.874794016368178963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d854f1eb828c657c119908bb09cfdddd62f9a6c5aa2b413f75e80a73d46517a4
Date: Thu, 03 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743668393
