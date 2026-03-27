Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C98436C5B1
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:44:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774597494; cv=none; b=XiSWAzl+kNzpUsscK8w5IF2ViBBrTbzvHSpPQHByb3T52yaI77e3nnwB9epB6c41V1Kf+K/Zeab+1Nk7ZQWp9KqrMadT7o1hBnTv+pxRnmyMdEkymUxoUJ4tx2spO73ly8CcUaV37SXvqS08GoH/DIDZMSTQqD8gzx4Rdo+Uv84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774597494; c=relaxed/simple;
	bh=akBA4hA0uqOlx0NU/IvnD3QVq+3DwalOPnwMqhqYFQ0=;
	h=To:Subject:From:Message-Id:Date; b=fuT561G+YPJLq0Tm6e5XQ4G7loMzVHd5skYTX4fPtZCPB4Wc8LzXwPv+nSFryCSruy8wTxHviUYAd/BOGEfi6ghKsOYFHMZXwXbkYtiGYfYsu1qIhru4asiociI/AJ98V0x7L88CRrd1n6VUbq+5mV6/dH3EwKTZfkCX+TSJtHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sEKStUUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sEKStUUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DD9C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774597493;
	bh=akBA4hA0uqOlx0NU/IvnD3QVq+3DwalOPnwMqhqYFQ0=;
	h=To:Subject:From:Date:From;
	b=sEKStUUr2oGePTRxKIMe0h4PPiVG7jpGivPIaLnj2LZE/YBu83K7Q0nbPYa5sOS5O
	 uiB9BVnvo3NmZT1kCzKFGjj3m875SWsK3HqMYBGWauxR0ogRmsO+Zd1Gjuxcu5Ypux
	 J0cLh4Kt3mnp0LvA8FGN6zdGK5mEfpoIK95a9IIkJFoHrYl/gmedta6V84GTzhiUCS
	 SzN6kh0dxBMLS0skGYNMxNuOKFJMzs15KGdVWbvXQOKJc/EQXvhvHXrwkd81DKvCj9
	 uZF2nM2SZjHSfSTOmkpTqH6k7iRjg3G3mi2b/cROaSP3mUefNYzVpJO9GBZdJvzlLJ
	 sLxGWMe+x8WGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9190410BA431
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 07:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177459749358.22973.5985694067789148229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef51ff6fb513115a6d93e3a84e7bdb62ca03a054cef152058c66611181a6dea
Date: Fri, 27 Mar 2026 07:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774597493
