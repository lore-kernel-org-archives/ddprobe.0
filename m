Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BA8225624
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721973954; cv=none; b=CsCKNKkjXvox0vyWr2G7xhY3pyCzfS4gBqh0H4LpyErLVG4t42lQqgG1+Eud39QwCrhdgkx/CEIaQ3hLmImhyEDgpfDgL+IsPffzoSlikir57aQbceRh1UgSCVIIP7OS9ZTTDtw5iA95/aKjchwH7e6PbJ1tYk0qXnlfFpfJ0Xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721973954; c=relaxed/simple;
	bh=yzdFJT7o3Py+MdZtN5duGyEUv9ziMkVOdnHHbNbLIAI=;
	h=To:Subject:From:Message-Id:Date; b=W8SIQnwPnSAmgCjQB/MNyb5xHMVTqeN0NwNwtHbC8fWQYb4768QOMfDVuULC38sopZKb6mmXJgv9nFU6z+JaeI8VQ3/ntPEuoqN2LJeBXs4M0HeSMVN/EEEekK2e2c1tykADHk6uVwp1wIbVQ+osAxABzWP322y3YITR//JRFxY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXbwBT2L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXbwBT2L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3CACC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721973953;
	bh=yzdFJT7o3Py+MdZtN5duGyEUv9ziMkVOdnHHbNbLIAI=;
	h=To:Subject:From:Date:From;
	b=UXbwBT2LMil+kKXqBUhHzsI4q4VRZw1RHSrnq3mK3prR9jU/KyNSzqNte1Koylwyu
	 CqHSdi7LSabp9Etn1U3hiQA4AguxASF8mFJpX7cN6dNyd6xW+U1lEMokRJYzQOAfBl
	 qJ335TyeuaH4k9zyd8lk5YHCBR8qruqekhj4CnfmpPU44J/aRmF4vQDSXTAPOzW8aq
	 4MaXzvPdZlcfgLAfEORU4shBCaVryfhE7cw03UOlPoRklYBJr0CGi7RqY8CLRNlmO0
	 SYTOLAAOoDr7LepE5e2Lt1lp4Ttm3QZs8L1mXMOo/5KFHvF/bDsIgmwSNIM0oL0QsG
	 iQe4CgnSu4Yjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D462C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197395363.25768.11996867026016612092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d324591d63d76cdfc11e89a4a397ec4a2db145528ebc30b97baeb51483495cbe
Date: Fri, 26 Jul 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721973953
