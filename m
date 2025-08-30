Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3406322F764
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756535394; cv=none; b=jRx5q8hrS+ZoBk6e7xTyTmBpwKjQNNOeC8DmclHLFR55A23pEjYtScb0Yts3/VIHk6xRIzJ7J2mib98EsfvgTl9RSIT2mBCM9pgGBeMEt4Gu2q72HEjvXYCU3/+AycVcoAJMnPYwczfMdGabdkHevDkfFOW9GDKDg7mkzjcciC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756535394; c=relaxed/simple;
	bh=hh5Vwp5pI/8YWZ2fJlxKK8F/8rxus/fNJ8FoLLsTOPg=;
	h=To:Subject:From:Message-Id:Date; b=YCG65SLB1t5cIbpqKvOdvhVf/OsypNFXr/kR38ywNxltD77pcNkGMErNpQEgF0Tpv2E/btrPlEBil8E2l/GA6SQdJVzqO6iTApgQGo5LA4U+qjWFSD9tIGEbBbUriiO92A4QBma1Xhncd9aNW00KNp22gQ2Y52h+20wtro1Nn/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RSWWb5Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RSWWb5Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B6C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756535393;
	bh=hh5Vwp5pI/8YWZ2fJlxKK8F/8rxus/fNJ8FoLLsTOPg=;
	h=To:Subject:From:Date:From;
	b=RSWWb5UuCzW9D5p3TXyg+v/URc522X+afxATUuUODpdmdW2hJbzP0cajAQNIrOyGk
	 arh+ij0mBJQnxELUcbpT68aESDGNGJ86EiWfw7uaiGouh3UcCz9/iQ8KTHbykgxpqH
	 SUv9y4di+FGaViCyMmKVCQZvoJQHlp71peWx9OB/llid4Mgs0JMqhwBtyL6tyD3hRj
	 KxLTD+ZqLIOOmdPZ+KPpw48uuzxRl7mK0mTj3HE04Ke96g5MvhIMVfjbS7Fjp6FoNy
	 ckiWnXvseG8jTBa2K3t4wiCVf74cRK2LUY034k0fQvyVUBA2PGJz5FVJoJfGvQRK0E
	 eGFQk5CrvfGoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94ABFCA0FFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175653539358.8585.1981806263249012193.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5002afd7b9f8e96fe2e6b59777fa893a23d932853710a00f3215ce3697ac861f
Date: Sat, 30 Aug 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756535393
