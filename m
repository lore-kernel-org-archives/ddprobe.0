Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73087A4E
	for <ddprobe@lists.linux.dev>; Sun, 14 Aug 2022 06:50:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1660459852;
	h=To:Subject:From:Message-Id:Date;
	bh=noppOdMHTrUvZJKwS6x6mRforVnKyduWCWjeYHLmmFw=;
	b=XoANdqQKLP/wTxUKxPNLwH1douykT78e3GfkYdd9f77757wV6nJsbE4Txx7DPMV4
	El8GmmyHs+pa5ugQ9uv0xkJ5vpMNZLWjY/jJgCbIHWvId4gJwCRvJfti9OIqGXuxc3k
	R8f4BqEjm2GyVrTEwiwefPLq6HEiG+ZEwoPQWQuI=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1660459852;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=noppOdMHTrUvZJKwS6x6mRforVnKyduWCWjeYHLmmFw=;
	b=lFKPKdZbk4sJA3/O3vr8NsIIBcybtSJ99P7fd1gByAeKf6fjt6HpuwhSwqIuXvsu
	xPd8w4sKTQJyOsLo8DOEVAdJtFTgw5GGIVaRfbQSdMT+tiB/8mUGLHXPURJHi41vTDS
	QIW/DCDD0W/d1IbNyBhO5dUVN/aFN/vd30cLK874=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101829b1ea32b-7ee5bffd-b975-4f24-8634-2dcf9f7cacfa-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 8dadae81fb34eb881b7bae7caafa777f3a2e702ea125c7aab26b07e736f663d7
Date: Sun, 14 Aug 2022 06:50:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.08.14-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1660459852
