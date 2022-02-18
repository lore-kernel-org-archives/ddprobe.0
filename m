Received: from a27-185.smtp-out.us-west-2.amazonses.com (a27-185.smtp-out.us-west-2.amazonses.com [54.240.27.185])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7866A2F32
	for <ddprobe@lists.linux.dev>; Fri, 18 Feb 2022 02:21:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=ynvfrugt7f76ohrif55wxuhdm54jjqay; d=kernel.org; t=1645150884;
	h=To:Subject:From:Message-Id:Date;
	bh=OjO6odIISvQEEw9YGGD1+UoxD8KrC5p+ux+AYLbOUDs=;
	b=MYn/M5HsBW3MZj5VfCysTsWvhGBnPPy5y5eV3mpRWeVN0/zYVAOOEfAsZoXoiprh
	ptoqb6sJ2fz71JamyIcORjcmVVJJWeN7jlLVaGa2sK1lVrLc7WUTubPexKNq1ciaiUc
	iLYhta3c7Xed7EVM/ek/hN5P/fe+/nGZ2tk0rWsQ=
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/simple;
	s=7v7vs6w47njt4pimodk5mmttbegzsi6n; d=amazonses.com; t=1645150884;
	h=To:Subject:From:Message-Id:Date:Feedback-ID;
	bh=OjO6odIISvQEEw9YGGD1+UoxD8KrC5p+ux+AYLbOUDs=;
	b=Em0+4Dlr3xPn3BvzeP5ym+TeSW4VgT073UBYt18AdVLHI64iJ9HI3MtANzD+wgs4
	bXoZLHpVh4vO4NozTKrnbD8J7g2shr6cDPLfcH1g1YXWX+LWJ/nr3mTV77XwZS+UZeU
	j5ZA8JFXjLtPTRNksE/XAE3qGJ01x0uoBD4c0fWI=
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-ID: <0101017f0aa253a2-14c25a01-f2ec-4e70-b084-694764fb5a26-000000@us-west-2.amazonses.com>
X-Rtt-Probe-Hmac: bbb1f92209f5e95d654f4dab61fae0b0987b05e183c05173730f2a9c7968a5dd
Date: Fri, 18 Feb 2022 02:21:24 +0000
Feedback-ID: 1.us-west-2.SRWGI0StfyVnjbk6m2dk6vieITagDnHZBvJJLHTOjxo=:AmazonSES
X-SES-Outgoing: 2022.02.18-54.240.27.185
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1645150884
