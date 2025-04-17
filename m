Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305127E1
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744865394; cv=none; b=pqtJS/A0d2IxAD+t/smQY6IY2n1FnR59UqFIbjMUYGkp1iTcRVk5pQGPTwOlyKtwq0JzXXUxohJMJ/jJtl77+FJPbMZ2S3dv7IfaK3MbA+dBsUUY6hq58RYu9iB+KVH1UJPvYRlWeYyag1YW9ihBRmubXEMC99Kv+Oblvc5/AOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744865394; c=relaxed/simple;
	bh=qUaRo0re0VSTihL2RsOAAWJVDZkVpQx6QNSYrAiRalw=;
	h=To:Subject:From:Message-Id:Date; b=XAsbBOLZbu5D9+MW75Wygt8J8Tf6CRq6lqjwqG3M57nUbPBhSV4AYtGG7Yieh7YchkmRkz5kmd/ctZkv8f2+8qpiMZoqbHfKgPabgwpankhtxJEcJsG5+g5sC3RInc1vJE+ORGE8ygZRllKqDvLR8AQ6R9xwkmg+LWHyYAOiUqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/e3K3Xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/e3K3Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5602C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744865393;
	bh=qUaRo0re0VSTihL2RsOAAWJVDZkVpQx6QNSYrAiRalw=;
	h=To:Subject:From:Date:From;
	b=r/e3K3Xn7lzGS2sXh0M2pJylawjbEeNTL3EnMQbJhU/h50f1FPoEmFTM/8Y88sCBh
	 9VN/TUgAWrQsQxO6Yfk3QLKhUeAOIDvEi2gdsGWFgmyAuNBQHeCJgZrO5Evn6F+ajB
	 cNpW+5aigi22i21MqpdmLuMWusX/3SNXykmgpGfzoyb/geUTu6naXcsXz3Ty7xfodA
	 9OLyZpRZQa8MXmU1GybP3TNjZBjIdVEiGTPSBJjovxJYZCVTf/5BnQnJd597LqvrVU
	 WhqAo/iKmJqEi52QIffh0GwnQZ2SzVfSjxCpJ8Zp3YQJEHNr1miKe9msGxwR2rWUtu
	 gqIvTMnIwrTPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913B0C369C7
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174486539358.15872.13067171328736306954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c18908c13377843667d44c5bfe8644759acbdab996590e285ed8d39d9a265af
Date: Thu, 17 Apr 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744865393
