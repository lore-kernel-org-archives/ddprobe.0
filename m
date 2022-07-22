Received: from a27-186.smtp-out.us-west-2.amazonses.com (a27-186.smtp-out.us-west-2.amazonses.com [54.240.27.186])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767982FB3
	for <ddprobe@lists.linux.dev>; Fri, 22 Jul 2022 10:56:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1658487412;
	h=To:Subject:From:Message-Id:Date;
	bh=QbTl8IWG3LFsgBCwY+BL7gX7XacV4YtsvO342Jt8hi0=;
	b=ck8K+owEumzaBN8ODimijuBQHuR/EJPJ2pGaiE7I7bnyzU037/RXRPDqe0oEhXcT
	1JIzHTJXfEVhiYJdXtDFJWRaoibuSZHigpFfVIjf71JYCr8sT84JZDsWV6MgyCURVt+
	Sm/isc8W1AJImmrAhe3dIvsIBD1a8V5OWgv60EV8=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1658487412;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=QbTl8IWG3LFsgBCwY+BL7gX7XacV4YtsvO342Jt8hi0=;
	b=GWyowRgUBb5cV6o+lAHdfwC/xNBzW5iHW0dBNFaXaOkJ1qDFXtqGKgWKoMfIIKhe
	G3+g0cu7lOQoFWQw2czSPPYeMyIg8wwn3JlsBFWl5/H8OIHF4zuZ4XdthT1iUsJzFwV
	ev7mpmqOXjSW5CBqOFiEeRTJH1hU5KKJoEuTCgDs=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010182258d9638-0380f6f1-6eb4-4cb4-a871-23783986a81e-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 9c413d1e06c950290ba42bb2fedbc922b470c4a77a5235760c65596528da8ceb
Date: Fri, 22 Jul 2022 10:56:52 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.07.22-54.240.27.186
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1658487412
