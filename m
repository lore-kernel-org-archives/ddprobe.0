Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1019C10FD
	for <ddprobe@lists.linux.dev>; Wed, 22 Jun 2022 14:37:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1655908679;
	h=To:Subject:From:Message-Id:Date;
	bh=VpnbyQwIZ+fesP8eSr1BeDS0sI5EzIMr8OKm6WFj/4s=;
	b=J7k2pYrBGltd8ox0tvrT1fm8pPHO46ZwhXVGb4pH5jhnvb3tHV0eRmLLGW3dqSPq
	fJ2h2YLagVEzeWBRtpteQP4e02ryxVK5yL3HMvHGiZyVZrm/9krQzuwrlwgz3p3HBzJ
	jhoqv6auru/i7DhcGVkT1AeIQQ+nK1UkPLBAa+XA=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1655908679;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=VpnbyQwIZ+fesP8eSr1BeDS0sI5EzIMr8OKm6WFj/4s=;
	b=PG8UcsivDBITydeZY79ASvHBd5bN7hUyzArPNGGcMPb2UqbSFr8oCi+8iDcP+zu3
	aoTu59+Hvf5qcIMc9rF3sNE8+HZyyh+XAZqUCAunuzjXex0/eQ+wZ4gaIdCddlGWG4X
	aE/knjZuKql5d/X4OrpgLnAu3pZJBr8OLTI+TVyI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <010101818bd93e3b-aff643de-635f-433e-a1bc-506e2c81c56a-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 7f379dc8df031f7469a40aac77266608a491a444535b5eaf921a09dabe61cae6
Date: Wed, 22 Jun 2022 14:37:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.06.22-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1655908679
