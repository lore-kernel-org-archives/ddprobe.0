Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E36363D1710
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777592255; cv=none; b=rMFdEDU2dHMBYxBkkyUf3/NjICqiBzDkHM4EEWwukYMge8sj/V7xtDo11mzw/QKTmYp/5iEAZFHMHJmxVzstmCgdyj0X9ssJ9kItVxYHXIbnEKU4TOFBzf9AJ2z5A85/ijZfkjnKgEnar1qEzZ0Lc++Ps3ajPRQk6UjctXM8gUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777592255; c=relaxed/simple;
	bh=nylxzNMjrrF8UmTSC0o8Bj0FP15s/cHt+Tr6+WOGxZQ=;
	h=To:Subject:From:Message-Id:Date; b=t1YosSidsdxxB9LqBS/r/kjE4PkYwwkkz95wsnEnNhSrDMRVb6TRBQ39EkBDvruo7Rn/tfqRPRuf9lSEsa1WRTHIDnOAuFtoh8AaeJrAsLNbTsm0i7J0zXLREA8ddaRxt0GyM5S5SGmSEMyjLIxJvuu+LgjlPRXrkEfbQkjAjP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/+kX/IN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/+kX/IN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE874C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777592253;
	bh=nylxzNMjrrF8UmTSC0o8Bj0FP15s/cHt+Tr6+WOGxZQ=;
	h=To:Subject:From:Date:From;
	b=L/+kX/INQmktJUW1Wi8o9SW4r5U9c8rKTGs+RsGYMoJ7dfofjAh1KhmN43APtQiwS
	 Yc2Zj9ltk3ZSmkQoF1KRsn58Fu9JmGJOfD9KKbah1xvjkf7wMKbFmBNuNVPDSWsOhf
	 lZd8e+lmGa07ACA6IvWhGWtlLkB3xE23lzU2Z+uHpKV7F9Pd1e2CstB25bzkAomyRy
	 kd9ZPqk8Mw/2KiwiuQxWqQsstwYzpZcXOyuYv/fu756hu2qvIXfcemuYb9kOwWf+2b
	 uceMTQaKNZuf9LgFSWOECUQ1Ho+s+2QIG+1+nGgVvPozvQYf4V2TlCyOYVABWgqSGD
	 ZnozQEg/m938w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E49FF886F
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 23:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177759225368.19697.4399994471087947324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6c67279af281e04dd3eede9e245cd443284bfac404b8491d8ef8ba48a860fe6
Date: Thu, 30 Apr 2026 23:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777592253
