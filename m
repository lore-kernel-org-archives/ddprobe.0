Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE827DA66
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746943194; cv=none; b=R2PASbNzfX9TM99+7IVQ50XwIjfIjRo6FhxlIu/k5GYnr/lNB92LCjdG48GA57JhziwpDABvm+Tz1GZZ9U9M2dcVZPcc6XZGwmdG1T6irn0JIV9VbWvv2R5gELGc/X6D1DjZOAV/UXWVaZhk/KFdgspkhWdk4COz8X5dEEMsmRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746943194; c=relaxed/simple;
	bh=ZB3NWu7tFcfqLmHcTkI9gnBHYoPYeMw48pGq4g3ch0I=;
	h=To:Subject:From:Message-Id:Date; b=h5BwJ7lxtGX9S9Y/gX6tqS88pIKFPyu++z7qmY0Nm4Xi5/e0L4RTFa3hJB+p6b8L1BzfUZBSMne8Xpd1DP+NebInDvk+i3gbPpH5PAKfiEMt8reuTRXcG1wqgny35liWUyPRJuCwmh3dAckfh1SCVVAcA6ZOrMvfDzpfZRuckRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VMG35U9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VMG35U9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83E4C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746943193;
	bh=ZB3NWu7tFcfqLmHcTkI9gnBHYoPYeMw48pGq4g3ch0I=;
	h=To:Subject:From:Date:From;
	b=VMG35U9fjU3xI10hF+uE8aLOtj//MqBajd1lnzlbG3NOAZUGxRUPkDVNJgCP2j+ZI
	 vH7JP8hUDeV6tXe/Mn4h4RYUvE5au9HCsS+WqdlQiXH5ehazZ3SJ0/BVPiqyVHDypL
	 q5K9/06nQbYegzYb1VK3BbI2zzItccKIa4/dZpyEUI9Hq6OGSe/Pa5G9b8xQv9QGU7
	 HE1H8d6L6mYzjXNWn3eacpx4wXfRq/xkNHgB5oIMQh8u0WdjE56raOJg8OXCNLpofi
	 BeIDL2qebVJmITI+5JWzloIDEuQdf33Hw2gKf+hFixHlaiwNq6zCKUCz+Yoc6CFdZ0
	 RHPFJnKMkp/5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CD2C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694319357.747.13407109400535435330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 057fce6117aea63cbb114de291903f7eaa3f92a632b86eade9ed70bc10f03125
Date: Sun, 11 May 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746943193
