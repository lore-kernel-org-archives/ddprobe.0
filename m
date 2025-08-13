Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303472E4252
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755090594; cv=none; b=NCNaHw6zjd5cMm5yL/S+8eNpaT1uNuVP9ErXYxpO5wyv9MojhdmUDE0i2xdkkE7W/vnv4qylB7Xy+MfvKQZTuxzZagDwKDGHuo8GjeU9wla8N3AfzGMZGdys/DKUW2qwSCJTkm4fZCXXpat59zjFnM9ixdqsVqss5CXbELV/drQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755090594; c=relaxed/simple;
	bh=IlWJe5nMTKQmaCvS2+d18953KMozWFG5z5oGvFRvDZ4=;
	h=To:Subject:From:Message-Id:Date; b=t0vyrjLwfd6n5EMWfUfgCaSavCl9KLD73UohK/2RsfpLy3NZAvaK9B/+//0o12l1aMqGsXtdIHT6x+ZXVMJ62WnZREf6YlWRNJ2rZWNrAg3HWC4Xj7y18+vbMeUhvN1DZ12QJ38CjjD7gE/i1+H4mNgZgmGsmJvgZsL6T+djyeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pf1lHyg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pf1lHyg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C45FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755090593;
	bh=IlWJe5nMTKQmaCvS2+d18953KMozWFG5z5oGvFRvDZ4=;
	h=To:Subject:From:Date:From;
	b=Pf1lHyg/8tPVuZ2ssddhNwT1KmUG2euKsbXi/oJAFe6Vlg3ccRmzZyLLAoPcrVPrr
	 gyojNFOyDi+lA/CQsfEvHyo4IlefUqnOevY45Hj7+b9WeIZgj0D++NRPdWfznde8HG
	 lzOzJdJ41P/0YJQagwZR0jWmfP6s+fleML5HW6sPEVUHO1OVVsLjsjC02RhXHAyJW+
	 W6lPqaw7HlQZQnhhInq4Do9OiE3N0Mu5v1upFUXrWNT6Hu6d23Utf7ECKvpHD97DA4
	 qJ7LGSETs4QTEJM58sfxIk+2vUt4wlDewHlg3/LxV5pX1bOKNLbkJfjuCOm1N1/q0e
	 IUK31U8yHj5Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4BCCA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175509059357.9103.5135592168382178236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb48d2a38be568433aa193f6ba1432c3b90ea8354784922e4c6a2e9ea8c01047
Date: Wed, 13 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755090593
