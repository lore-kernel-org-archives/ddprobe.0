Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F01937702C
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783709914; cv=none; b=UYU8kqh+6kXO7r3PMv9bG3vcK/fLljwZWCPTgC0uBIRmPmkkm7s9RuAGsJxgmvf+p6g4hNGumcvYmow664cj+zGWYqy91fbrXjpYOalukJdMAkmSt2r8Ws1Y10KVcWJzU+U7L/KWhnwcqLvwHNeptvhqdpMYpb7EpWxhWAa/h6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783709914; c=relaxed/simple;
	bh=wf7wMZGltv1Wm1jF7vS4HJHfZxXmSCHzPCBjyHLUfrg=;
	h=To:Subject:From:Message-Id:Date; b=I0i5r9pkaZvQzTdQNpQpE1da+TJWt4pWobSPgn+uiLffYzfu0TxXzWfPDT7hVvYSxdebN/aBGZjpPWLZ8D/KtNDCkRsY3w7FcdmaGVbdu4M+UnHSnoLFnUEubLzPieSZySDeP9Xt0R8MZL/M2JDWv6bJdd6BCeI0AgKpraoKou4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s96seruv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s96seruv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB8BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783709913;
	bh=wf7wMZGltv1Wm1jF7vS4HJHfZxXmSCHzPCBjyHLUfrg=;
	h=To:Subject:From:Date:From;
	b=s96seruvbaosvg2nu/h3teEMoniJ5Q/041tP0HfHHgpgWVp4XJulYQGZ4UACcD0yL
	 C630f24BA8fX6qD1JKKJ79/UrVr6aGuK6EtOeCFaBcqYJvPgrOQR3GXxbtWtMeBNDh
	 4QYUvfjQJl9AOIqswiZcKzXnZJSDEI2wBMYs3RQh65uCFUAjSznrtQC/Fk/DbX2p+w
	 17ZuJai7xtPsjBE06FJyrKNffYOO1D7s8iOaMZ/uYy5nqsExif+qhXxBkk7n39nXIM
	 wKJuz26kJClUE3bRbGBaL4GxGeUYm04GnZZgT9gMbvldNI2cteMMoilp7CqQAhdXXp
	 YuYtNKZZ7D/hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B74C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 18:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178370991368.17102.17755028189583848163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf34ca92788881e33ef90e7364316f302b6f855e8c74b5da165cc201e03cf02
Date: Fri, 10 Jul 2026 18:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783709913
