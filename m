Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5CE349AE5
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767798834; cv=none; b=kw/Rj+mT2jkc4me6PMYIRocClg/BiYk5RcEJ/C2oR2bSgw3H1GDKJwmwfQuXmb4Gv4u9S303VL0Z1ZSsmCE86pFTZC+98fhAy98rD3l5cysUm4wwr2/l9wFG90rYTrqjWVA9vC+lCQ5B4yosi2zi4fHSOJL7wwoU+cN3QUVx9+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767798834; c=relaxed/simple;
	bh=oFWZv88rK318A+EpfQW6BjlQIE/uvgmKM/lgaLUBZHc=;
	h=To:Subject:From:Message-Id:Date; b=F58Y1xc074Yoi1LIOKQ8XBjGyjaR01IBD3Dr7qdfYecE6T9vMwGtD9P3rYqqyVGJ+PYHYpenC9Z9zbqjEWCR3hY8lrZX4THAuvmJZ7+M6CJHi5dlxYNWked9ifwBRmtwWFWtPXbm7UYo2t2JX4Soh6Bq9Y2P9LxnseQd51qssFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ggiXCUha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ggiXCUha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3635C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767798833;
	bh=oFWZv88rK318A+EpfQW6BjlQIE/uvgmKM/lgaLUBZHc=;
	h=To:Subject:From:Date:From;
	b=ggiXCUhaXfKvjhRvHIgHFXfPML0YC7Rw+t8DZfi7s4MbAXCIlANcZ7CZhMbAo4EIq
	 UDaHwK6tHA60WmTdxVrnsUFrhjNI0K+s9oow899t1XjD6TXCe1fsHmFLgnNT2WMK36
	 nz5otjr6s4c4Xnem2N+XULbQjOe3bkFcOhhXlkVEBr2CP+P4y5OqdoVeEmPh2XwWFa
	 CUh2d9atZPeUldjEvEYi1CDsOs574IQlpEmowXOIU7rpXAV8rIIL/zU0wFKs/jq1rQ
	 JuZ3iBUGuz/wzwYqOcda4WxJ+9XXgsRcMRp1PJjybeelAjQNQj+srVYTc0IgHE4btO
	 YBeqjEegf2Kew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9501CCFD64F
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 15:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176779883357.25644.9637032297680067512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa47997326da6aab1f054c8aa355a3779b62309b545d1c525bac599602cd964d
Date: Wed, 07 Jan 2026 15:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767798833
