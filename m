Received: from a27-188.smtp-out.us-west-2.amazonses.com (a27-188.smtp-out.us-west-2.amazonses.com [54.240.27.188])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D01204C96
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 22:11:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645222285;
	h=To:Subject:From:Message-Id:Date;
	bh=Bin+e9F7W4SOR4Bf0rbEC8uBIz1mOFzIHP8Mx4PySDA=;
	b=IRDlv1VjsCgv7wTw/7zCMlE0g6eAx8j21GPYqXcBRxyKFlImnz6/aWT7e5uHmSzT
	wUXVikMYRq694L/XEzWZ8v4Nv8ol5XM8yhL0oF2u7vJspBdlWVrBStFhRId8ky3mZtd
	UdqWI295oPaXRh6xsXmsUsMMDRpBNEkTerMnucwc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645222285;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=Bin+e9F7W4SOR4Bf0rbEC8uBIz1mOFzIHP8Mx4PySDA=;
	b=Y+7MaewW9EuTwVDnh8Dii7rHq/4A26eFgyxOoTB447PSE5fY9IcOTuTnHMq5C+n4
	CH3Dg8dV9rlJiVpL/5BJHlWsapWpzn17MoZE/pS/1oiQZRv1a/2x+ajzsvqvIX9XfkJ
	eVlEqOSvfWoQjgnyl9Q93sUAGaQVwntZh27VQzaE=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0ee3ce4a-b35cacc2-4238-4732-8f36-c0c553369b54-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 04aea54a204a25e63470695690def0ebc923c1dc9e00ca3bc44cd75df19fa4e0
Date: Fri, 18 Feb 2022 22:11:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.188
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645222284
