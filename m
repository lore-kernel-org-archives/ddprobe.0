Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B7540DFDA
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778023654; cv=none; b=iAmJDjIxquNtrre4wZ5OoMuPtLHv6Tzwwgg09TUUZyHoVkEV1r73/XHeU3isCIiz3IrxfPUUMe61uTKw72qgvrlrHp/ZX1wVbLyE2Z902X5nwYqjzVD/PwMC7lz0n91kk9dR/TsVn93WP4TILD7QFwVRJtgv2w6sJpjJupEijeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778023654; c=relaxed/simple;
	bh=h8N72E1ZLRLPCIt3Z9QozJxW8ZZXc157B4pwQ7aAKvE=;
	h=To:Subject:From:Message-Id:Date; b=THr4eaP2JzMPRWitIcVVtWgO/7WzaVt2KN0Oc/2OvJeNA4H7hprBgAyYOfjyxC46UWs4e05wUHOjvuzDvNSsNgHEVShfN/g4xu4OuIxJh6O+IJ+TViqarRk3PHrr+AABJ4AyXlEi2+SMhgyIYyfi3gvmATTMt3XbG6OczTXA4aA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9e+40dg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9e+40dg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE138C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778023653;
	bh=h8N72E1ZLRLPCIt3Z9QozJxW8ZZXc157B4pwQ7aAKvE=;
	h=To:Subject:From:Date:From;
	b=U9e+40dgK2O14QLhjXuc5VJMom/dIjGIpVCQrYeiaYh3W9a5pECnXmvdaBqQV/Z45
	 Koq+2oyRThs2gZr9CwGfHMGDsLT1BwxOKRTWBnCDwy6j+rBTuSY0s0hZgVobhXHxdb
	 IuLQBIeTdU6a4GhNBvzU93TmSJr5rk20IRfjw6qj3MS2+rCEK+0klNVMX0A5qrI1ec
	 vXxWIT1bDWrzbUYofcVnDoAVmUCSqW4exQxgnVsC46XIGMZYzFNvpmhx71x5iU3x1F
	 WukdKjgAU7KY33oGxQ2iJEajdOYXWOL1gOk3j85w6PBnB5EMqiRQyw1HKZZnZMWb1D
	 na5ETk+TDe2Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD744FF8855
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 23:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177802365368.14768.2900024713923307056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aed3c52fe79d9ec831f4ce3c5ad0ff2b99df0c4a96c20080303aecf95ce14640
Date: Tue, 05 May 2026 23:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778023653
