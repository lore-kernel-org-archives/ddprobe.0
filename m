Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8C7C638A9A5
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:33:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769142834; cv=none; b=ULu///zXpe3Ou5xxaYYnMIRosVmXRWeyL26Xd8+9dURbKJFPy++trWWkQGBLhl3UQlwb/gFRqYFgO4HcnQi0p72o8dh1V8hJpGLvt0hbk5yeIu2Th3N80zQVg6fHJTRTGcmRThORiFJqbaOzj+2HAnKAAtkxLWC39n4GsPtJ180=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769142834; c=relaxed/simple;
	bh=aL3jHFzwG9tH9SqxE6AQBSN4MP3dD3Xo+GFSbBhMZFM=;
	h=To:Subject:From:Message-Id:Date; b=BSCDLlaRGYnJr1QGnRygP5juU7Q6EwQKeeslp1WdHOo3iYSbZdOOy24KzeZ5JSeVMyp9nPo6ANVW9lKu8zi2UTRzs1SuqqiQnYfHM3Fatr+FxsRvvANIDaqspj9eSCwz/ZLT2Wf2HvTsBerD5uhSumpsXXDdtgaj6bl+IRa6SRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XE+nsRVs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XE+nsRVs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A36E6C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769142833;
	bh=aL3jHFzwG9tH9SqxE6AQBSN4MP3dD3Xo+GFSbBhMZFM=;
	h=To:Subject:From:Date:From;
	b=XE+nsRVsQpjn0xdKR1qMqgQ29+K84QFwSLv18DukH1aS5qKL2uaECd2ZViS1oympZ
	 BHwW/AtgLOBXhFpKyYohdu5flnt9DacWXDQrgmNBOq99yAv0KaRqlW34c1bKHAcUQ5
	 POwYjAn1JgYxjGeKtasAdKeMvKJd02iop42eJJJl9GHKXTXO6NKuprYKOD96U7I290
	 dhdga8sGkRpi4fxBR1tlbFTLGYJSqfiXEXm5VJgL2ezk4NugPwcEYTxdXNy1DK5l7E
	 QRocoNKaX6wAF67dNYyGAo7oI1Q64mYocbsjaGZCluYigiwY9iaVh2F0dzDKrystEt
	 vTMC1XlmPpYvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CC8D6CFC1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176914283358.28737.847741851730878452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03a1415d0be040bcd42d1f6f2c501b88e80a3f722dab7d584a5cb50b5517c059
Date: Fri, 23 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769142833
