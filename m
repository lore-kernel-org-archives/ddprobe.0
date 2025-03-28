Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1072116EE
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743148794; cv=none; b=W46cW+A5ayxMCGGmYE5mPehgKaPHzYm8JUYKSW1zz164rjzQR3YiZubBQLj7etsyPckqV2DDgPVFyOvjN1yILFOZzfkpPwqFenbHGaOKZq62J2azYZEX1ydm4+lJKSSu7WCX+499mjPWBWQ/yBvq1zoguWm6RLavdvEtEOpgHpk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743148794; c=relaxed/simple;
	bh=2xhJM5H2oWXFEe3twl5npe+UqreZZJKmbLB+JelNqeI=;
	h=To:Subject:From:Message-Id:Date; b=mchwDmSYLag4DBNmvhJVb5jy+34F6NxQHP2vVlmD8sK3jvxKzNnSs5BjSBodDf5fAESkigLCHNF8JooQVjW+a3I7ammLSB83WUFxcM7OhVtwy4HJyqlg4wZcmDP5FHWeXPnmluuBzSfHhyHKs3v5HRTUv9LxdKiKengdRYE+UJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1jS+ZDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1jS+ZDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B341FC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743148793;
	bh=2xhJM5H2oWXFEe3twl5npe+UqreZZJKmbLB+JelNqeI=;
	h=To:Subject:From:Date:From;
	b=Z1jS+ZDfev6ChxpQdrFqoK+wnX1F00kex3TCuBmCAxuf7HkxC3t2utqDzIeFR7Ghy
	 OTu1xLFPEJa3oahBe82AGO2fqcjZ4YVo+sfEoAf5qNiYZTXVLH3MxrGBLOR4DitlAL
	 7XmQjFQQja5aPaCOi32SOi9ZmfFX9S6MzpvE2BvBBXJlwNeFMhLxIAHgzarbccbpcO
	 Swm85gYZd+qOHLKOnfno4qV926yJHtzEvyOAGenOW6VU7lTsYnge4q2Lxv5SJkjDc9
	 2yNRcrHA+NDkHw5Y4JSuwQSQRoPyqQQ2K7F2U6SrA8U9pgbfr63x5DmKXltePzQf0a
	 wLwyb2wJTBNxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A46C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174314879360.8120.10598632856403472802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84d03494139e1c311a8df8ef620c0449fa08873907f3c635885991bf930c8070
Date: Fri, 28 Mar 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743148793
