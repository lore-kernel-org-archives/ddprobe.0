Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3168B207A06
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744817394; cv=none; b=Q4mfgUZUuFTJdJrWbhCUdzcb7zq2m/+9V7+rYbekhoUttajyilruWoUpkJmbM59vaB+SkuD/aL9crtn+V/9fkZaYcjxJ+bcxLXkFhTUg/Z18eA4YaDZn4DQWZl8wpts+oEE+Vtlhi1IeJAATfR76srHZUSmMroJIHSfLGuLq7vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744817394; c=relaxed/simple;
	bh=sVUV3KIi9o8SrTIp6hz6R00eAsat7Z6kO4nKrWXV3KA=;
	h=To:Subject:From:Message-Id:Date; b=CtUnLMNxIaFJVDmDHBUGltt9hvyBbCOeQggTICH07D502e6Dr1rlErl68OT1Cf8KuCAhCMhFb1BpY4VMTN8l//XxkcEpz5P40Uo7zjqU/shlWumNTqxZxkncb9Twb8iMHMRYwO3y830wIKpfk5NsD1D82k3gv9fqld6yoOFznmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HHDS5a4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HHDS5a4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7DF1C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744817393;
	bh=sVUV3KIi9o8SrTIp6hz6R00eAsat7Z6kO4nKrWXV3KA=;
	h=To:Subject:From:Date:From;
	b=HHDS5a4hdnFQU4wH9HU4fo9wMLHAzg84vNc23NRYl0tLUq0yf3CigPRZBClExlgxv
	 LRjAW7CdHFifZnFtIf4VT/3eXITmDyRcIQwlkZHNhXXtLJBfC0W6CU3HCyZOnZXfVf
	 g9Y0/LXH/c8QHJeth6Uoa6D9uVMWKZ40BxzlZv0w8y2EsttWB2+MmRajlCr2c3OLwy
	 LcLwuFEAD5D6oQOTKxVh2ADxDp29NF5czWBv9peggZQ6NappW/rvIPXi3n2SSI8YHV
	 hFn+0gXSs1OgBJYzNo8ep0y+LQt+xD6KBO12dy2eKtzzp0Hyk4KAn+3H8O93jnqgsz
	 VGapHe6kQO2Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9624DC369BA
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174481739360.28588.14286488399232773944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5c0aa27ce3c5bd57bd6ef58cc19600aa4fb6857c6e36d0b9ac629c442cf3264
Date: Wed, 16 Apr 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744817393
