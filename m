Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE421C8605
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761707394; cv=none; b=d+0NbRlm6Qpc4Ss5C7dFzntKzu1qbs+fAmhBRmv9m9G5oJcr0UfQ7Uu07+QmQOreHLriKfa/wYO1ZiHl5z0LszBLnCP3BTQ9XvfxIUJu1oE0cTI/mwaXNWILsRI0X03aGJ39oYO8Nu4+nDDDFR5Z/bh9fGFk5iG/7ts5EtumA6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761707394; c=relaxed/simple;
	bh=V1TLZbTqeZkQkgVg2I183ExFUy7PuWwRASTYeKLv4zo=;
	h=To:Subject:From:Message-Id:Date; b=ZrbWrdwwVqslnvxoig4rRp+jyeQCbnqDYJEEWxRT8PcydNSaNxIVCjTY+23dUrsa4RlFNd1UVKuWYnMrbHf760lyjSTBmNT8qrGMh+n+Y6Pbs/Qcf1ihWt2sWFJjI8qgdukn2VDLRpv1+JT1U9Z/np6mfkrlHcrmkU11sRHd6Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1iYRP52; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1iYRP52"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A503AC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761707393;
	bh=V1TLZbTqeZkQkgVg2I183ExFUy7PuWwRASTYeKLv4zo=;
	h=To:Subject:From:Date:From;
	b=h1iYRP52PVdsgjVw8pl9PvaMtte9jJh0PgxSDCa+9uNRlzfu2YA9sFVqwiD9SHcuN
	 B6RxhqZT6uJPah9dosMdQ4BuRjeAqRg7H5quyaM8ok/PZdXHS3X+d+wwMK1n8ADP7t
	 POy2VoEm9wQ5ipM0GAI3oqHGMXSDYJSVCeqWg83a7oyK+QCmQsbtOiO4KPwIZg9+7m
	 ihnBYOE0IrYEn4Wf9GLfl2IW5SeZ9KkxZ1fz0vYsG9/uZohKGN72Vs3NGev53g1tkJ
	 sOebkxxYatdzYE7BsRzHs5MaJrOod46Zz+S/f8Bm5SvvBhxG5LEPc1PBRyOg1BpvNw
	 RXGkUzxZ1rseA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9247CCCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176170739357.2587.12867817080624587330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9232afe2631d2cb19d5c8784c99aa6ef355fed32cc8da73101ec739a99770d1
Date: Wed, 29 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761707393
