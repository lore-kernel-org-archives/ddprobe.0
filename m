Received: from a27-10.smtp-out.us-west-2.amazonses.com (a27-10.smtp-out.us-west-2.amazonses.com [54.240.27.10])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C465838F9
	for <ddprobe@lists.linux.dev>; Thu, 17 Feb 2022 02:41:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645065685;
	h=To:Subject:From:Message-Id:Date;
	bh=iC1CLfN5f4y0Q39We4u1BsakLQFSUt7tsVDr8I5Px5Q=;
	b=kpHIpKnniEeevs8A2HIvUzfJmGqmLhm56jiGHb+Mx+9YR4Sil+scJlZ/7qXhnm+G
	3L6r0weeANUmVRnPWPKBhElxMMeodGouKTpXCTXCEdZwYdLEYgEaRkKoY87zyfN2eRc
	hQX3ZQih5mPI985n198E8P1UNFLbQBoyGhiPjHmc=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645065685;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=iC1CLfN5f4y0Q39We4u1BsakLQFSUt7tsVDr8I5Px5Q=;
	b=NVUT+R3L+wKqtz1uED0io2R9JCJw6qeRdGCtFUtte4wrZ5vEjLopw7IAQECUbwLn
	jajXu5LR3IhXOwNj0G3U8L/BEzjOQq76zPOKA5ChL5tROvsmkKPWm10Qc9e9Ic6SEA8
	rAP5pZvN2MJH39Cg8Uw4Vfk2Z9PkxVsMzwmdbw0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f058e479c-9f4c2159-e4b4-4735-9b74-4e22d8b7c906-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: 0a8017fb9440ba9ea2742ec566f8910088081f679721c67a6a2900669ecad074
Date: Thu, 17 Feb 2022 02:41:25 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.17-54.240.27.10
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645065684
