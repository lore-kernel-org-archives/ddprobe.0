Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1343910A36
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KEhiM9Xi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 82211C433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703849296;
	bh=om3iKIx1TQJFRvKRVNKH0wUajbWXZj67099Hx0naJW8=;
	h=To:Subject:From:Date:From;
	b=KEhiM9XirXN4uNrKJg41CyfdDKbA9WNUx591S83wKU/+yJA+RQxdKg/Tez75W3oJ7
	 hU6o8fAfLa1ncTPoTK19F5DXf+2fMd0Oqw78bvZ57v9PWxViTNUFnbQkiRctCD3uJZ
	 jPoYdz800vP2SdHK1BP9djlV6s1lx0MaHiK9lAAzp6ohr2pKK9EpqX+PjeGzESnzts
	 BBe1tIzuglSPhiQmvzdm7K3XvKocDQWTtmcv3fr9OeZRwwjqpOqjZlPwmP+loA2MGm
	 iDSxu1ebcpA+M7TRx3W2xhc5AkTdlgmlnSyUXhuwN/zdBIjbc+UGj+X45uzjjKxdrn
	 OXGPW+hkqMf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 636EEC46CD3
	for <ddprobe@lists.linux.dev>; Fri, 29 Dec 2023 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170384929637.26883.2726211384006604198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23efe3194ae1c12ae510efecd611160341f7b348a190f6e2c3a115fa62439dbb
Date: Fri, 29 Dec 2023 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703849296
