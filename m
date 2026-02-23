Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFB291F5846
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771865693; cv=none; b=L1P3Db+5hVDALbYLRWdgNx6BVEsq4r90EQYtNDry1KLPvzSLB+mNK9KUFmtL6cMaZ3AW/Bh989Fk1+QwV3Mg95nXRMyJoUlDm8+aHbfmC2Qtg1aIknQrod/Ad3eDiTX8TQVjXulYOR9La5rzo6uDrALN5tZCu71/ForiiFtLpUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771865693; c=relaxed/simple;
	bh=D/Il2wCaafEb2qkTnIGpjLG+4vcKP2yP2pr7nK0WVys=;
	h=To:Subject:From:Message-Id:Date; b=n+m6BvB+JKxMb222ugfGSls6Vryem+nprwpRDHlUS68z1MBtGEYYqLgoXhdo0pPXxHZjstPfFyb1MzkzsP/maSiLLbJ9cSZIJlqih3OggH9QmcRlGebBiZ2eEDSPeJL7p+SAll4ZyR2QoEWcVU8QEasTTIMn+Sp8xML8ED+Hxj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecMRRqiH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecMRRqiH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A157FC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771865693;
	bh=D/Il2wCaafEb2qkTnIGpjLG+4vcKP2yP2pr7nK0WVys=;
	h=To:Subject:From:Date:From;
	b=ecMRRqiHmovoUBmY734hwipPMWZwjXfXLbE8DPS/Gj9SaJlO4y9LJtxmYGTlm70PZ
	 72yfMaerVDOP8xUu8xy0LuXv8eT0NeGMi3ba4tbeUNnf4V6K20tl+kI8jQaXDW7OsC
	 UupXebcpS5UghXkXgbZ233jHVUVfjnFDDpZE9GSYvAy1+Ihw9m4fbKY/ah1opuylR0
	 WAKX6dXvutCJb4wOcYCys3HtuRF99zqCP4MAu3zq3G37fdWxRSFA9Enr3zqRbxKfUQ
	 x4oN+xOZ9oowsib0fpkLdrJsPC0suYJgvRtWMfW6AHB/yv5+nswgiYV+w4lwz454K3
	 v+9F9SMjvATdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91957EC1106
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177186569358.24528.7101550021808536008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b26e5c4730a6f8b521567af27b03187c10a541f79c9ea03fc4b5ab4ae790874
Date: Mon, 23 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771865693
