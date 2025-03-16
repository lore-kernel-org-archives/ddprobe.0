Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFFA2E3377
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742141394; cv=none; b=SMwcSg5cL1oERmz/DCWF3SBkP/lVkjvU7outBGP6TaBXs7IFg6c1wo+gbNXsELXUc3GhKhlopT3zAdstWIOKpt/mQJBgeBDI1YN8BRLXxi3Vu5t4ghuAk1L/HkvW6QgXGKBvEwb5jQNV3/el5iBX7ZdR9jdii6H8k7ZhirWjHWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742141394; c=relaxed/simple;
	bh=nxh081GaH+ZqfXZj6KIabAMG3RES2l06fqJdCe4nUmg=;
	h=To:Subject:From:Message-Id:Date; b=Tnnbh4KnIK0undZbZq/s24cujWVi8CtS+K8mrIq43Ft10/79aeXmPq4sILecIgIt7XDuad/YhvcKovMhHKbILfc5ApMNECWnxCt6ca4yr2Ht0TPXNaD5pC5EpPsLSH/LQo9Fi3k4C/KkBnxtrAuE6mTh+om9Bd+sq4SXKxqDXJk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bqYj5KM0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bqYj5KM0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD5AAC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742141393;
	bh=nxh081GaH+ZqfXZj6KIabAMG3RES2l06fqJdCe4nUmg=;
	h=To:Subject:From:Date:From;
	b=bqYj5KM0FyFmiVjT5xflsVcVB6SjDC0jR9wqxaaIOWnQXCO33M0GlkhbmtEsC/hhE
	 t6hTjneQ9jxETOVkepSkRVMf/9HYYmHqvFslVTwnpkrrcimuBXTN3xceaJIwHuX0AQ
	 TMhBBZJ0YckZdck7+DX8q29q6yzRltfT67tZz70SbIcoMrnbZJYHh9mswMB++v9wjI
	 82/CRZcPY0qqyMecXd3LduuXOKBwrzcyYnyrs12mrxXopXBLs0y61/Ves3fcnTmG+i
	 4jR90Wb0dDNDOendysAzWqoJ3NfY2E1UaXxBqrsVWEY7YMgvQvpFUcX1auDtk/pF3f
	 eLjRDfRt2fKuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99D55C282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174214139357.5450.3931159451011230508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c9c1318a7663c152f9c45492946607bfd1274caa46fbd75165e31055145d86
Date: Sun, 16 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742141393
