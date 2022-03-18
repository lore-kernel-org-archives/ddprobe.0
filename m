Received: from a27-187.smtp-out.us-west-2.amazonses.com (a27-187.smtp-out.us-west-2.amazonses.com [54.240.27.187])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C492C15AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Mar 2022 03:26:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1647573984;
	h=To:Subject:From:Message-Id:Date;
	bh=sNlueo45A/ftfODqwa58V7MY4g3bMm5B/aMauCNLK24=;
	b=Khyqh78ZtP5KnVR6w4lz9mOLgVl6c+UiW3gcN3CCDDXY08yiEEgyCIqgdSNa6Vdh
	i5FDLZnqr9A1nJmY9bt3988kb+qjGSVTIqS6JbMoCZnsLPoHdT5rZENv8oAo6tpqZnH
	mEym8XNSew/wpW+Bkmi2e3SApZkuBxgSuPptwuG0=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1647573984;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sNlueo45A/ftfODqwa58V7MY4g3bMm5B/aMauCNLK24=;
	b=ggO6j1y7f7hmseq4PZg5dlMEykH2KhSBFyZNU/wi/8aZLr0NhcRkSQIKmBLKtLQg
	uEa5SMjSbrnh8asoFqhPiCuSzso5WvJL98OMkwUuD2vYYBaRrqgn8uh6l/zX66FPGVf
	rfUNZzMAIq7Kjxby38PxTR/UwbHU6sA2C/lLfaew=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f9b0fe5fb-63077165-767d-4813-8a72-65b5c96888f2-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 1d972461708f884673fc3d9500463ea3b6bb2c6d5f3523a1ce66d3658067db98
Date: Fri, 18 Mar 2022 03:26:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.03.18-54.240.27.187
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1647573984
