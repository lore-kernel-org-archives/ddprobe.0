Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC6013AA4C
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 10:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723891554; cv=none; b=RlETMtzwIAoZqr9Mu2HNDMNCgBPnVXtHE9YCIvZZ64BCXUb/1gRXFrJF0KnaOBqwu8Qd7hhOomeCzdPaKmJA13zFXDbLiOMA1JJJlFDhU9y+m2LuDA0rYPPGWk5GK2xX27/7kYsK6IayCk7KaazJyND004FcYh6CwFSpcNpcU4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723891554; c=relaxed/simple;
	bh=/XknqvQDxCN1p+i91Zo1uHgayhsNdtLnYoacr4cMauQ=;
	h=To:Subject:From:Message-Id:Date; b=KwKVGMSH3c9XgGXpn3lXup8GRXtWVzUJcxTNKwLr8eZsL1UTyq28JzO9nJRiPNBqU+fULeP/jSrlu6HOhQMoS7R/3MKz0mWLvsxMCMbQQMwBQiHq7Brs8KqckURENS8mPizGMC2Gb7ggVT67+cRE2VBdLvGtegR1a1s5hl20bW8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VOMmh3oL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VOMmh3oL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3258C116B1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 10:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723891553;
	bh=/XknqvQDxCN1p+i91Zo1uHgayhsNdtLnYoacr4cMauQ=;
	h=To:Subject:From:Date:From;
	b=VOMmh3oLy4V6LrOzY1omPgIUZorGwfWyT0yKA9424aTRkhuYXzUduj2V4iVEA66Vc
	 hKIGEiHhcEkxFaDtynuk73MWsxpokw3jrcaCWMUr7+/i0pl/eT/QJZo3TFxeZp09lo
	 DeHthyHF12JJHwqtqYO0OPi5WCyUCqqF0pMEJ/loPPA+Gwbj+q8t+UO0iJnL28Q866
	 9P1WVeVBwLZrjbEJjcy4S28OwKhooC7Xer97mimp+yoleeyUF0d9l6Cup0wteu74X+
	 v/XSZjcSfh0YRGuBXZU37kM6qJccTDgZJgdQAgDXWM5pwcHrmJVaJKOIzJKzBb5Wo1
	 lrss719iGA/7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997D9C52D7F
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 10:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172389155360.9482.1478379848562757841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 695fc42c0a8412a82a9c4f9fe950a49de6aa520e03daaa6281f0c23d8edac320
Date: Sat, 17 Aug 2024 10:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723891553
