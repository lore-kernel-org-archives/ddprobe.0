Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 071573A0B1A
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772117094; cv=none; b=At7JmVVsDx6BiTqZZdxhLewRBVU113HRMMrLaR2hHEIxvt+pZz2FwZv5fzMRNRFzvZXKsVpvv32MMUdwH1Vwd5LZ212JyIzYneIjSKcNu/fb5e/eZeAwBy5zG1eitFpblMnRSa7B2yHbk4xYJIjdiITlRCGHPjuNH1VKc9pKCu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772117094; c=relaxed/simple;
	bh=DToob5IT7EoCGNS5OqoRGyI6oNs0ye+qI6z6d2nvHhU=;
	h=To:Subject:From:Message-Id:Date; b=GS/g3WSAto7jJqlDfzyoZ2CiyfDy/LSxuHmxwELXBJkJn20/seN+4aB+mY5XwcTkW2GmepvvKA7CqFe2Vt3Dm8Ku8r+sity+i4zOlPCteQquhufcleEwKVn7iluC0XHnnUtn+LjhIIyRKGXKCVw3JdT1Xx3cLKKUsYyqhBLu/DI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4Z8qa41; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4Z8qa41"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3B6C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772117093;
	bh=DToob5IT7EoCGNS5OqoRGyI6oNs0ye+qI6z6d2nvHhU=;
	h=To:Subject:From:Date:From;
	b=j4Z8qa41BZmPkPWFpQ/iGKEY2vTbhtBWXJ5Vd85lG2+9nasDcYjKTEDTunf1p1zjJ
	 Y4Tkle3c8Ql5b4VRj6vd8UHbtr0IylkToSRV3Q1wNjlbFuFTll5JbCKS9ys6h3Cg+E
	 2u6LJJaIOHWRfZlT+INKB0HXJXWMlPeEzJPSwLEW8MeweBkwvAcbmtupOjyXoekmxg
	 XZcrDSEv8Q/Cmo3Cy2B8q4ew2YPqP+4gety3qgrFdBAG3kj8EmcslFfw+BaYOPme0P
	 sgsxMMAfWJkjmTV/ghngss30hLgq9BMqS8HlU2yDzsDwQ+RwUaKdxJMcbGaypS7D8A
	 d8mFUW0IzArPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96404FCE08C
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177211709360.19306.2630006918854006950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95fffc229de51ef16b1ae7d0e1b362c55ff7873cb5ecbdcf0a9bdfa41f285f7
Date: Thu, 26 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772117093
