Received: from a27-55.smtp-out.us-west-2.amazonses.com (a27-55.smtp-out.us-west-2.amazonses.com [54.240.27.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D581854
	for <ddprobe@lists.linux.dev>; Tue, 17 May 2022 17:20:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=t4m3mn7v7zpr6jas7yz4ivc4rozilcmo; d=kernel.org; t=1652807999;
	h=To:Subject:From:Message-Id:Date;
	bh=sqYsUdimdLv3F3egqTW7pHHFkoT6Dj2OZ3Nv2FvCwQk=;
	b=EC7ijVV+NrHkT2fWzrv+oQUXJTvtEGBQm0aoD1B7YiKZmjTtGnJShHx1GQNZkiAj
	nef9kJZrQUsTsHe2DmRZtwaxMffvk9fLIh/DoLHx9BAeQPhTdDXrhrvSdfYpmJTx294
	R7x+lNtnb+PBAFjdNJsELuZzmQX++Xgmh16o17FU=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=gdwg2y3kokkkj5a55z2ilkup5wp5hhxx; d=amazonses.com; t=1652807999;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=sqYsUdimdLv3F3egqTW7pHHFkoT6Dj2OZ3Nv2FvCwQk=;
	b=LxhH1jBrHZPOTBlGFdtR0jxpd9tPFS5CleZZGzsollhkeZ+f9tJBUaVZ1ho9j1NU
	rG3Xu+k7OqT2sOxv9HAQD83+9r8Mpnh+B/JpB/wR7M70zaO6RI/6xeFsm8gKzMDhi1Q
	lSi/vNrQ0qkhXyu31w4PoZ2u2KRpuW9SE0iC3e0s=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <01010180d3089f49-9cf633ff-aa48-43b9-a15f-6885ce44ac3b-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: b95e9675b15cf5cbf543aab391e8a5959d8ea0b64a447a5748bfecd67d32cdc0
Date: Tue, 17 May 2022 17:19:59 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.05.17-54.240.27.55
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1652807999
