Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D68C270EC3
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766000634; cv=none; b=itrqeHRtjTyT2hi7kygLS7l+9jcuKwhHZRCoIRlgzUYciKttMXjG56qwZ8XnY5R5JdSbvhPA4ru9kunxb6oKKGsJ3b4hjYAMgRCedxim/F6o6PC22CA89Cwlnwv55+bopJPUN3YIr/+ZERFpbhyI+3/IRtfbts9Yn2wjKWH/Alg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766000634; c=relaxed/simple;
	bh=fjpJOlOalGvRQzqeuE3/j5i9DoxEGhp1VPrglOOu0uY=;
	h=To:Subject:From:Message-Id:Date; b=BdlzHcDBTdjqQuzmooNPhc/VrQv5WP6ix/OuOKnXQs8PQHbWbMyLaqphaftZv0G3zUsuAEFjkpTFIqBh1HJxFjdykbHdXi5viLeTYR6qFr15xw5uSErPtXBYRTlkui+aC3+v131aJZ0sF+6Mp5zOwdSRhPg4bNARvZRoQ6GK62k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tq3KdrS+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tq3KdrS+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA5C5C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766000633;
	bh=fjpJOlOalGvRQzqeuE3/j5i9DoxEGhp1VPrglOOu0uY=;
	h=To:Subject:From:Date:From;
	b=Tq3KdrS+K476mIxDv9+evqG+MPALzYZpHVLmDlgJZrIxkevGfetkqYspeTTXU8rX/
	 2T/wgSg0NfBbBNhXq+5KsmZ5Zbmt6xSDjgHbXcatVzpacPtxR9Q/0WPvJjdzjK0n2F
	 cq0Vp67Bm4YuYyWTDRd6qMWRspyGJ08+HsERRdRPCOIc4FXdJWtX5ezUr2q3UV4G67
	 DSrR9SdZF0NiKXDvSLOz9LFuYn9+zcp9zcVLvJpCzO6BQjWYvlLa8hq3cPxUg6C/HR
	 IMz1dMDIIIYeaWXIDRsGaun8tDaXiLCdWF2BpoNTqXxEuc6egWhhx7OjfIzwkDkqvt
	 6aOJhytwkCFuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97817D66BA1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 19:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176600063358.14840.12707883421697446243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3890fb1da7355b39f97b8ad9f6b636d21a0d01a5d44a54fed75da21f49fbbb1a
Date: Wed, 17 Dec 2025 19:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766000633
