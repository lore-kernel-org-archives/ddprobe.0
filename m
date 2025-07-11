Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B564179A7
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752203994; cv=none; b=XwDwpK9wn7x2fEj8Ul/6zBHeBbqIIlZ13WzadePqL2wc6WhoaQ0wvw0lSL9Y2EbW1+A4f5AmBZeiU4UL0TSlW5DBacrNq+8R8/D/eJsfUynMa+yfAB3HrDGWgOStbkuQw8ugwejw1Pz6Ya3h45v/PZAJ0hb4ei7JPdKtKkBpJtc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752203994; c=relaxed/simple;
	bh=n9vMimCUnV61uCs0l+swz2jqs5Gg/l7SYeAD1r1NfXc=;
	h=To:Subject:From:Message-Id:Date; b=mx6Dlh3g+FY/gN4rSmOcSaRRZd33UFY1Sz8Of8PQmBdBIW6plDbNGxXMYH97N8v5FGqL5yUafCyueXrin82bZ6enUUwHnJp+3/eogKy+mDBN1j3i1VIF+lkPj0jnNJmc9NExZjWU7z87Gil43bQDNhSEeED18zzoIyKh6CPIDro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=caqoOwfQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="caqoOwfQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0A2BC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752203993;
	bh=n9vMimCUnV61uCs0l+swz2jqs5Gg/l7SYeAD1r1NfXc=;
	h=To:Subject:From:Date:From;
	b=caqoOwfQCTTVh0nxaa6A8b8Immg9yznAWkCJxvyS9EJEW3NeEeIKq1wq9ggg051D2
	 I9S0FWRpu1heQ6S9a7yvm4aqZnrV7/xzB9KtIFDz6hr5ilXVf63vBRO6j7R2wMmbhQ
	 D0mLoBhHlmFDZoc55htwvFH5RDmY+16qhWoLbalBcZGxI7p18Yy7adOHctfn5h/zaO
	 itmTydnipSjAyVSOLGhiKw8vJYgp4nfNf+dxzRWUClqJ5NZ3cLGtnllc8fy1Boj/v4
	 r+urYJUFXSjm/3DiomYWpK6ZbOdHGjlL2JCQDo+DwWmhWI57p1h6Q05dXg2WbzY8Sx
	 yU+18C8zQfsWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2D1C83F17
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220399358.12830.9158339114393537741.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94785c358a81d45fab04a7397a0e7bb77fd3cee25b2cc8921cc7bb9d786c18f5
Date: Fri, 11 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752203993
