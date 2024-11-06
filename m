Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F10A1DDA24
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730883954; cv=none; b=ICiyWIUHy+ilwa5dxejotViggVMJr8UuWqdbk+tOrSqAtXg6Jh4Vgf1k3uWbJZAHyAjCtNqpY+pQ8bwmg5DDrlDaNX7DlUgmcZOl8r7dF8zG9dMvCkgIvrIykzn8LOyEK6AXsL6BDFbARxzwybTeMlnpzVuyiEQIafTSvDIJD+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730883954; c=relaxed/simple;
	bh=HT/Yi2x/FSEDbdnaiAjptz5Q+LkwU45G1BMiABWm1TE=;
	h=To:Subject:From:Message-Id:Date; b=CcJo+2ib4Il+DZwsNSXIm5lZbUZaP9vrYsThOOb9bT7b5lvPwI971XR3OmGhBp7kQ+G6cdA3Lol+zZSxTJ8c3hC9aVf1xKpRNjHZxjvegNeyF2eDHW5N/BvHwliRPTGCSVfvdH5eRSAqb3VX+gBXvDvn0lUUljAD5NesAt/k+Uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DfVXjuRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DfVXjuRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2807C4CECD
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730883953;
	bh=HT/Yi2x/FSEDbdnaiAjptz5Q+LkwU45G1BMiABWm1TE=;
	h=To:Subject:From:Date:From;
	b=DfVXjuRbSqzi4UVZw3AF9Bag3nc570womB4obf0lTadVXOsSzSej4uEA+kH6OV5ye
	 MTWfw9PrGqtrpvHHCYGyYIV7NkqJOapUrTYsKLoqb3StGplR5C4uM/c4O4Ej0rlP6w
	 byxzE3jYlXHAqB2x7Iy8D+yTr/+xOn4IjiSO8uEkIgJ2Di9Tols5Znpf6u7092of/q
	 u0w0gCrUaazfK6Oy/quzqKdGFN5tJQRlSF8yCc1FBpm5vlnvLdzMo57rjm3rsuIbDK
	 7pUFYQp3TQob17lDYTQFi8tOvgiOX+KTy4KQHK+9JQlXnTwKI207IwvQKbmbpmvEUm
	 38P7czBqSFQ6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907C1D3E78C
	for <ddprobe@lists.linux.dev>; Wed,  6 Nov 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173088395358.9825.17347106068482236766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4d30fe2a6d00360180280c6446ae417af0cb8d8e91369073abff06be2e10307
Date: Wed, 06 Nov 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730883953
