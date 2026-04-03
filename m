Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA973C5DC4
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775230534; cv=none; b=QKMUcBGBhKlUCD9p5UfLCCZWIqDDRQqE9MRkWD3IZVRvVI5mWfPKUqx2UoNTu6q6lLOsOkMzPaobXuxPDZzek0hq4BQdZ4qshly9hAu1xe1Dw5dkuqf4XriTyOiGelJEPdnBHzT4pBoX+SQlnAO9pH6+cpke3vkMu+c3UVpDWGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775230534; c=relaxed/simple;
	bh=iklvSRBVb8iS/wIOQujZ0uTf6ago8Our1+pNo7hf8GA=;
	h=To:Subject:From:Message-Id:Date; b=pSMi15aL/ayD++Pwr56v2sLYgpluSl2iWeCZkqNF4Q3m9KoA07Rp9ePzc4NQFXY4AQgTIEXgSj1wyWI5z1pLHDiTq3ZjiwWyN9TmbGDa9Inpwg0078gV28xhWss4YHW6gA1FMMi1I2nawJtfDYhAY0SpHYYCEGwyHtSUbZpnKVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F56yB0sI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F56yB0sI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C045DC19421
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775230533;
	bh=iklvSRBVb8iS/wIOQujZ0uTf6ago8Our1+pNo7hf8GA=;
	h=To:Subject:From:Date:From;
	b=F56yB0sIHnu5M7XQo2DJFPk1jVSbXyuP2ZR+V36thYCdLirGNpweskNaNrHOdEAx7
	 T70jXnMqV0wD7o92oOkmF5EV/L/7aeEoRzQ9KLVpSi1/8h6a812ZjSJSaziVhN3Grp
	 cZqGHLdgUNs0AqhIaPy6ynU134nfgxZDlHlvlLiJS3BFCH2wBkZUCwf9boqp/KJrST
	 C4k5OUZwOHnM1ietTCjwpghMYNBv7TZq3F3nuqNWKEL0BmaNtcnaKtASZsjHGnQHvX
	 CWFAl8mAAXQzBn+Qy+cVbSX5iq2s/B/3XdOIBhpOanwpA0jiYunnVLen8yHm5xeKpu
	 UqaZlLz8bmd+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC85FE8537A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177523053369.28833.3525443314363208703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17bdd8985210694d8f4681384140169f68e49a74af765c8682bcc83fb4242fc
Date: Fri, 03 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775230533
